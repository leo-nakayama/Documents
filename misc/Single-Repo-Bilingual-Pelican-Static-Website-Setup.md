### **Optimized Workflow for a Bilingual Pelican Site Using a Single Repo**

#### **1\. Directory Structure**

graphql  
 
`/pelican-site`  
`│── content/`  
`│   ├── en/            # English content`  
`│   ├── jp/            # Japanese content`  
`│── output/            # Generated site (ignored by Git)`  
`│── theme/             # Shared theme`  
`│── pelicanconf_en.py  # Config for English site`  
`│── pelicanconf_jp.py  # Config for Japanese site`  
`│── common_pelicanconf.py  # Shared settings`  
`│── buildspec_en.yml   # CodeBuild spec for English`  
`│── buildspec_jp.yml   # CodeBuild spec for Japanese`  
`│── requirements.txt   # Dependencies (Pelican, Markdown, etc.)`

* **Shared assets (theme, plugins) are centralized**, while **content is separated per language**.  
* **Configuration files (`pelicanconf_en.py`, `pelicanconf_jp.py`) import from `common_pelicanconf.py`** to avoid redundancy.

---

#### **2\. Configuration Files**

**`common_pelicanconf.py`** (Shared settings)

python  
 
`AUTHOR = "Your Name"`  
`TIMEZONE = "Asia/Tokyo"`  
`DEFAULT_LANG = "en"`  
`SITEURL = ""`

`THEME = "theme"`  
`PLUGIN_PATHS = ["plugins"]`  
`PLUGINS = ["sitemap", "related_posts"]`

`FEED_ALL_ATOM = None`  
`CATEGORY_FEED_ATOM = None`

**`pelicanconf_en.py`** (English-specific settings)

python  
 
`from common_pelicanconf import *`

`SITEURL = "https://mydomain.com"`  
`DEFAULT_LANG = "en"`  
`PATH = "content/en"`  
`SITENAME = "My English Website"`

**`pelicanconf_jp.py`** (Japanese-specific settings)

python  
 
`from common_pelicanconf import *`

`SITEURL = "https://jp.mydomain.com"`  
`DEFAULT_LANG = "jp"`  
`PATH = "content/jp"`  
`SITENAME = "私の日本語ウェブサイト"`

* The only differences between `pelicanconf_en.py` and `pelicanconf_jp.py` are `SITEURL`, `DEFAULT_LANG`, `PATH`, and `SITENAME`.  
* You **avoid duplicating global settings** by keeping them in `common_pelicanconf.py`.

---

#### **3\. CodeBuild Configuration**

Each language has a separate `buildspec.yml`.

**`buildspec_en.yml`** (English Deployment)

yaml  
 
`version: 0.2`  
`phases:`  
  `install:`  
    `commands:`  
      `- pip install -r requirements.txt`  
  `build:`  
    `commands:`  
      `- pelican content/en -o output -s pelicanconf_en.py`  
  `post_build:`  
    `commands:`  
      `- aws s3 sync output/ s3://english-bucket-name --delete`

**`buildspec_jp.yml`** (Japanese Deployment)

yaml  
 
`version: 0.2`  
`phases:`  
  `install:`  
    `commands:`  
      `- pip install -r requirements.txt`  
  `build:`  
    `commands:`  
      `- pelican content/jp -o output -s pelicanconf_jp.py`  
  `post_build:`  
    `commands:`  
      `- aws s3 sync output/ s3://japanese-bucket-name --delete`

* Each **buildspec.yml defines the language-specific build and deploy steps**.  
* You set up **two separate AWS CodeBuild projects**:  
  * One triggered for English builds (`buildspec_en.yml`)  
  * One for Japanese builds (`buildspec_jp.yml`)

---

#### **4\. Deployment & Routing**

1. **S3 Buckets**  
   * `mydomain.com` (English site, main bucket)  
   * `jp.mydomain.com` (Japanese site)  
2. **Route 53 DNS Records**  
   * `mydomain.com` → S3 bucket for English content  
   * `jp.mydomain.com` → S3 bucket for Japanese content  
3. **(Optional) Automatic Language Detection**  
   * Use **JavaScript** to detect the user's browser language and redirect:

js  
 
`if (navigator.language.startsWith("ja")) {`  
    `window.location.href = "https://jp.mydomain.com";`  
`}`

4.   
   * Or use **CloudFront behaviors** to serve different versions based on `Accept-Language`.

---

### **Why This is Better than Cloning Repos**

✅ **Less Duplication** – Theme, plugins, and global settings are shared.  
✅ **Easier Maintenance** – One repo to update instead of two.  
✅ **Scalability** – If you add another language (`fr.mydomain.com`), just add a new `pelicanconf_fr.py` and `buildspec_fr.yml`.  
✅ **Cleaner Deployment** – AWS CodeBuild handles builds separately for each language, avoiding unnecessary rework.

---

### **Automating Bilingual Pelican Deployment with a Single Git Push**

To fully automate your deployment, you can trigger **both English and Japanese builds** automatically whenever you push updates to your GitHub repository.

---

### **1\. Use AWS CodePipeline to Automate the Build Process**

Instead of manually triggering separate CodeBuild projects for English and Japanese, **AWS CodePipeline** can detect changes and trigger both builds automatically.

---

### **2\. Setup Overview**

* **Source**: GitHub repository (`main` branch)  
* **Build**: Two parallel CodeBuild projects (English & Japanese)  
* **Deploy**: Sync output to separate S3 buckets  
* **DNS Routing**: Route 53 handles domain mapping

---

### **3\. Steps to Implement**

#### **Step 1: Create Two AWS CodeBuild Projects**

* **Project 1 (English site)**  
  * Uses `buildspec_en.yml`  
  * Deploys to `mydomain.com` bucket  
* **Project 2 (Japanese site)**  
  * Uses `buildspec_jp.yml`  
  * Deploys to `jp.mydomain.com` bucket

These are already set up based on our previous discussion.

---

#### **Step 2: Create a Single AWS CodePipeline**

Instead of manually triggering CodeBuild for each language, set up **one CodePipeline** that does the following:

1️⃣ **Detects a Git push** to `main` branch.  
2️⃣ **Triggers both CodeBuild projects in parallel** (English & Japanese).  
3️⃣ **Deploys the built content to the correct S3 buckets**.

##### **CodePipeline Structure**

csharp  
 
`[GitHub Source]`    
     `↓`    
`[Parallel Stage: CodeBuild (EN) + CodeBuild (JP)]`    
     `↓`    
`[S3 Deployment (EN) + S3 Deployment (JP)]`  

---

#### **Step 3: Configure CodePipeline**

1. Go to **AWS CodePipeline → Create Pipeline**  
2. **Source Stage**:  
   * Choose **GitHub** as the source.  
   * Select the **main branch**.  
3. **Build Stage** (Parallel Execution):  
   * Add **two separate build actions**:  
     * **Action 1:** CodeBuild for English (`buildspec_en.yml`)  
     * **Action 2:** CodeBuild for Japanese (`buildspec_jp.yml`)  
   * Select "Run parallel actions" to execute both builds simultaneously.  
4. **Deploy Stage**:  
   * Use **AWS S3** as the deployment target.  
   * Sync output from the build projects to the respective S3 buckets.  
5. **Save & Activate the Pipeline**.

---

### **4\. Automating Domain Routing**

If users visit `mydomain.com`, but their browser language is Japanese, you can:

* **Redirect them automatically to `jp.mydomain.com`** using JavaScript (as mentioned before).  
* **Use AWS CloudFront with Lambda@Edge** to dynamically serve content based on the `Accept-Language` header.

---

### **5\. Benefits of This Setup**

✅ **Fully Automated** – No manual builds needed.  
✅ **Parallel Builds** – English and Japanese sites are built simultaneously, reducing deployment time.  
✅ **Single Git Repo** – No duplication, making maintenance easier.  
✅ **Scalable** – If you add more languages, just create a new `pelicanconf_xx.py` and add a new build action.

---

### **Final Thoughts**

This AWS CodePipeline setup ensures **whenever you push to GitHub, both sites update automatically** without extra work. 
