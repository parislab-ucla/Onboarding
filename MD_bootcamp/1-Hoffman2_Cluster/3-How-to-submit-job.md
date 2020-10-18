# How to submit a job to Hoffman2 Cluster 
Finally, you are going to submit your first simulation!!!

There are diffent ways you can submit your job to Hoffman2 Cluster, let's first try the very basic one, and I will show you a better way to do it for next exercise.

## Download input files and upload to Hoffman2
Please go to ~/MD_bootcamp/5-Practice/1-SiO2 in this GitHub repo, and download all 4 files.  
This time, you do not need to understand codes or text in these files, but I will try to organize a zoom session to explain to you.

- Create a folder on your local machine, like 'Demo', and downlad and move all 4 files in Demo
- Connect to Hoffman2 through FileZilla (or CyberDuck)
    - If you already successfully connected to Hoffman2 using FileZilla, you can quick-connect by: 
        - choose > File > Site Manager. 
        - Choose the site you built and click connect. 
        -  No need to re-type anything again!

You may notice there are many files starting with '.' and make your FileZilla messy.  
These are default hidden files and please do not delete them.  
To hide hidden files (for Windows, but Mac users should have similar steps):
- Choose > View > Directory Listing filters
- At bottem left, click 'Edit filter rules'
- At bottem left, click 'New' and rename it as "Hidden files"
- Then change the condition to say "Filename" "begins with" "."
- Click 'OK'
- Select 'Hidden files' for both your local filters and remote filters, then click 'Apply'

Now you may have a clean worksapce, but feel free to explore a little bit on FileZilla for yourself.

To upload your 'Demo' folder into your Hoffman2 account, just drag it!

## Submit jobs using basic lammps.q command
Log in Hoffman2 using GitBash (Windows, or other tools) or Terminal (Mac).  
Enter the 'Demo' directory. (hint: cd Demo)

Watch the second part (**between 12:25--19:04**) of Prof.Bauchy's recorded video [here](https://www.youtube.com/watch?v=PUW__yVsYSY&ab_channel=PARISlab%40UCLA).  
Before following his steps, you *NEED* to read below
- For simulation time and number of tasks (cores), you can choose 16 hours and 4 cores. (I forgot how long it should take, but this amount should be enough.)
- Please do NOT use lab's private nodes, unless you have permission from your team leader or Prof. Bauchy.
- You do not need to wait until your job to start because we require more nodes and longer time, and you will receive an email when your job starts and ends.

Now, you should successfully submit your first job.

## Use advanced qsub command
(TODO)



(Ignore below, personal notes)
What you can do after submitting: 
19:04--21:16

How to understand output file
21:16 ?? -- end