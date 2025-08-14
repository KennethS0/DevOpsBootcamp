# Commands
List of useful commands that are commonly used in Linux environments.

## Navigation Commands
Commands related to viewing contents of files and directories.

* Show files of dir: `ls` or `ls <path>`
* Change dir: `cd <dir>`
* Show current dir: `pwd`
* Show all file contents: `cat <file>`
* Show scrollable file contents: `less <file>`
* Find any file in a dir: `find <path> -name <pattern>`
* Find text in file: `grep <pattern> <file>`
* Show start of file: `head -n <lines> <file>`
* Show end of file: `tail -n <lines> <file>`

## File Management
Commands related to file manipulation:

* Copy files: `cp <src_file> <dest_path>`
* Move/Rename files: `mv <src_file> <dest_path>`
* Remove files: `rm <file1> ... <fileN>`
* Create directory: `mkdir <dirname1> ... <dirnameN>`
* Create file: `touch <file1> ... <fileN>`
* Group files (archiving): `tar -cvf <tar name> <dir>`
* Compress files: `gzip <file>`

## String Manipulation
Commands related to any type of string manipulation
* Replace matches: `sed 's/<pattern_to_find>/<str_to_replace_it>/g' <file>`
* Extract columns: `awk '<pattern>'`.
* Cut on separator: `cut -d '<delimiter>' <file>`
* Sort file: `sort <file>`
* Remove duplicates: `uniq <file>`
* Count lines, words or chars: `wc <file>`

## Pipes and output redirection
* `|` : Connects the output of a command to be the input of another command: `cat file | grep pattern`
* `>`: Redirects the output of a command into a file (overwriting any existing information): `ls > dir_info.txt`
* `>>`: Redirects the output of a command into a file (appending to the existing information): `ls >> old_dir_info.txt`
* `<`: Is used to direct the contents of a file to be the input of a command: `sort < dir_info.txt`
* `2>&1`: Redirects the std_err into the std_out: `ls > /dev/null 2>&1` (This command directs the std_out of ls into /dev/null and the std_err of ls into the std_out, so everything will end up in /dev/null)