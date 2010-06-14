<pre>
 ^..^
( oo )  )~
  ,,  ,,
</pre>

------------------
Git-pig
=======

Git-pig is a collection of utility scripts for Git.


Gitadd
------

Gitadd helps you adding files to the commit.

Picture this; you just created three new files in your repo folder.

+ gokuri.c

+ readme.txt

+ suntory.c

If you run gitadd you'll see this

Untracked files:

    1 gokuri.c
    2 readme.txt
    3 suntory.c
    
You can use the numbers to add the files to the commit.

For example

    gitadd.sh 2 3
will add the readme.txt and the suntory.c to the commit. Yes.

