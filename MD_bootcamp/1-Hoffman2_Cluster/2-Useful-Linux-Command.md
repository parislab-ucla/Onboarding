# Basic linux command (for MD-simulation purpose only)
This page only contains frequently used linux (or other) commands for our MD-simulation.   
If you want to know more about linux commands,  
link to **Linux command cheat sheet** is [here](https://files.fosswire.com/2007/08/fwunixref.pdf).

You can watch Prof.Bauchy's recorded video [here](https://www.youtube.com/watch?v=PUW__yVsYSY&ab_channel=PARISlab%40UCLA), and below is my summary.

## General hints (Updating...)
1. Commands are case sensitive (i.e., ls works, but LS does not work)
2. Use 'TAB' to save time  
for example, if you have two directories are named 'abcde' and 'xyz', you just need to type 'a' then press TAB button, your terminal will show 'abcde' automatically
3. Frequently check your storage since each account only has limited 20 GB space (See commmand below)


## File management
After you login to Hoffman2 Cluster using your local machine, you can
- List files in your current directory (folder)
```python
ls
```

- Create a new directory (folder)
```
mkdir YourDirName
```

- Check your current directory
```
pwd
```

- Change directory (most used examples based on my experience, but there are more)
```python
cd                  # Move to your account home directory
cd YourDirName      # enter YourDirName subdirectory 
cd Dir1/Dir2/Dir3   # enter Dir3 under Dir2, which is also under Dir1
cd ..               # Change to parent directory
cd ../Dir4          # Change to parent directory then enter Dir5 directory
```

- Remove directory
```
rmdir YourDirName
rm -rf YourDirName # More common option
```

- Copy, move(rename) files  
:innocent:  Sorry, I prefer to use FileZilla or Cyberduck

- Edit and view files  
:innocent: Sorry again, I prefer to use TextEdit (Mac, default) or [Notepad++](https://notepad-plus-plus.org/downloads/) (Windows, download)  

- View files on Hoffman2   
Sometimes we want to view files on Hoffman2 to check one last time before submission or check if your job is running perfectly, in this case:
```python
vi FileName  

# Exit the view mode, type in
:q

# If you accidently type anything, you will enter edit mode. 
# Don't worry, it will not save unless you type another command (I don't want to show you here). 
# To exit edit mode, you can just press 'ESC' button, and then type
:q! 
# NOTE: ! sign is to tell computers to ingore changes you made, dont forget it!
```

## Job and storage management 
- check submitted jobs
```
myjobs
```

- delete jobs
```
qdel JOB_ID
```
- Check storage on your account
```python
du -sh 
# Each account only has limited 20 GB space on Hoffman2, please check frequently whether you need to clean or backup some files.
```

- Exit your account
```
exit
```

## Advanced commands 
- Show weights of each file
```
ls -lh
```

- Check realtime change in your simulation output file
```
tail -f FileName
```
