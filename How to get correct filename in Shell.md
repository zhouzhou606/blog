## Quick Summary
More summary could see [here](https://www.dwheeler.com/essays/filenames-in-shell.html).

``` bash
 # Correct portable glob use: use "for" loop, prefix glob, check for existence:
 # (remember that globs normally do NOT include files beginning with "."):
 for file in ./* ; do        # Prefix with "./*", NEVER begin with bare "*"
   if [ -e "$file" ] ; then  # Make sure it isn't an empty match
     COMMAND ... "$file" ...
   fi
 done

 # Correct portable glob use, including hidden files (beginning with "."):
 for file in ./* ./.[!.]* ./..?* ; do        # Prefix with "./*"
   if [ -e "$file" ] ; then  # Make sure it isn't an empty match
     COMMAND ... "$file" ...
   fi
 done

 # Correct glob use, simpler but requires nonstandard bash extension nullglob:
 shopt -s nullglob  # Bash extension, so globs with no matches return empty
 for file in ./* ; do        # Use "./*", NEVER bare "*"
   COMMAND ... "$file" ...
 done

 # Correct glob use, simpler but requires nonstandard bash extension nullglob;
 # you can do things on one line if you can add /dev/null as an input.
 shopt -s nullglob  # Bash extension, so globs with no matches return empty
 COMMAND ... ./* /dev/null
```

 
 