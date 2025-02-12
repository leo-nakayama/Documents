Here's a markdown-formatted cheat sheet for common usage of `grep`, `awk`, and `sed` commands in Ubuntu/bash:

# Linux Command Cheat Sheet

## grep

1. Search for a pattern in a file:
   ```
   grep "pattern" filename
   ```

2. Case-insensitive search:
   ```
   grep -i "pattern" filename
   ```

3. Search recursively in all files under a directory:
   ```
   grep -r "pattern" directory/
   ```

4. Display line numbers with matches:
   ```
   grep -n "pattern" filename
   ```

5. Show only the matched part of the line:
   ```
   grep -o "pattern" filename
   ```

6. Count the number of matches:
   ```
   grep -c "pattern" filename
   ```

7. Invert the match (show lines that don't match):
   ```
   grep -v "pattern" filename
   ```

8. Use regular expressions:
   ```
   grep -E "regex_pattern" filename
   ```

9. Search for whole words only:
   ```
   grep -w "word" filename
   ```

10. Search for multiple patterns:
    ```
    grep -e "pattern1" -e "pattern2" filename
    ```

## awk

1. Print specific columns (fields):
   ```
   awk '{print $1, $3}' filename
   ```

2. Use a custom field separator:
   ```
   awk -F: '{print $1}' /etc/passwd
   ```

3. Sum the values in a column:
   ```
   awk '{sum += $3} END {print sum}' filename
   ```

4. Print lines matching a pattern:
   ```
   awk '/pattern/ {print $0}' filename
   ```

5. Print lines where a field meets a condition:
   ```
   awk '$3 > 100 {print $0}' filename
   ```

6. Calculate average of a column:
   ```
   awk '{sum += $3; count++} END {print sum/count}' filename
   ```

7. Use variables in awk:
   ```
   awk -v threshold=100 '$3 > threshold {print $0}' filename
   ```

8. Print line numbers:
   ```
   awk '{print NR, $0}' filename
   ```

9. Process data in blocks:
   ```
   awk 'BEGIN {print "Start"} {print $0} END {print "End"}' filename
   ```

10. Use multiple conditions:
    ```
    awk '$1 == "foo" && $2 > 50 {print $0}' filename
    ```

## sed

1. Substitute first occurrence in each line:
   ```
   sed 's/old/new/' filename
   ```

2. Substitute all occurrences in each line:
   ```
   sed 's/old/new/g' filename
   ```

3. Substitute on specific lines:
   ```
   sed '2,5s/old/new/g' filename
   ```

4. Delete specific lines:
   ```
   sed '2d' filename
   ```

5. Insert a line before a specific line:
   ```
   sed '2i\New line' filename
   ```

6. Append a line after a specific line:
   ```
   sed '2a\New line' filename
   ```

7. Replace an entire line:
   ```
   sed '3c\New line' filename
   ```

8. Print specific lines:
   ```
   sed -n '2,5p' filename
   ```

9. Use regular expressions:
   ```
   sed -E 's/regex_pattern/replacement/g' filename
   ```

10. Multiple sed commands:
    ```
    sed -e 's/old/new/g' -e 's/foo/bar/g' filename
    ```

Remember to replace `filename` with the actual file you're working with. These examples demonstrate basic usage; for more complex operations, consult the man pages (`man grep`, `man awk`, `man sed`) or online documentation.

# Bonus
## What does the following command mean (skip the find command explanation)

'''
find ~/Documents/ -name "*txt" -exec grep -Hi penguin {} ;
'''

Certainly! I'll explain the parts of the command you specifically asked about, focusing on the `grep` command and the `{} \;` portion.

Here's the breakdown of the relevant parts:

```
-exec grep -Hi penguin {} \;
```

1. `-exec`: This is an option for the `find` command that allows you to execute another command on each file that `find` locates.

2. `grep -Hi penguin {}`:
   - `grep`: This is the command being executed on each file found.
   - `-H`: This option tells grep to print the filename for each match.
   - `-i`: This makes the search case-insensitive.
   - `penguin`: This is the pattern grep is searching for in each file.
   - `{}`: This is a placeholder that `find` replaces with the path of each file it finds. So for each file, grep will be run with that file as its input.

3. `\;`: 
   - The semicolon (`;`) marks the end of the command that `-exec` should run.
   - The backslash (`\`) is used to escape the semicolon. This is necessary because otherwise, the shell would interpret the semicolon as the end of the entire command, rather than as part of the `-exec` option.

So, in essence, this part of the command is telling `find` to execute `grep -Hi penguin` on each file it finds, searching for the word "penguin" (case-insensitive) in each file, and displaying the filename along with any matches.

The `{}` is replaced by each file path in turn, so if `find` locates files like `~/Documents/note1.txt` and `~/Documents/note2.txt`, it would effectively run:

```
grep -Hi penguin ~/Documents/note1.txt
grep -Hi penguin ~/Documents/note2.txt
```

And so on for each file found.