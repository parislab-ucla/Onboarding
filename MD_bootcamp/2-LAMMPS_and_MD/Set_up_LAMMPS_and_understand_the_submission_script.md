# Set up LAMMPS and understand the submission script

In lammps.q, we use the installed LAMMPS package in Hoffman2 to run simulations, but sometimes your simulation may report errors because of the version of LAMMPS may contain some bugs.  

To avoid that, we want to have a fixed and more controled version of LAMMPS for a series of simualtions. For example, in the 'LAMMPS_hoffman2' folder, there are 3 dfferent versions of lammps. 

Now, you can 
- Upload the 'LAMMPS_hoffman2' folder to your Hoffman2 **personal login directory**, do NOT change the folder name.

Then, after downloading [3-CAS_551035]((../5-Practice/3-CAS_551035_simu)), open the file named 'run.hm2.shared' using Notepad++ or TextEdit (Mac OS).  
This is the file we use to run all other files.

If you are interested in more details about this batch job submission, you can read [here](https://www.hoffman2.idre.ucla.edu/Using-H2/Computing/Computing.html#submitting-batch-jobs).

To get a quick understanding about this file, lets read important commands line by line:
```
#!/bin/csh -f
#$ -cwd
#$ -o jobout.$JOB_ID            
#$ -j y
```
:arrow_up: Not very important, keep it in this way.  

```
#$ -pe shared 8
```
:arrow_up:Important. -pe is to modeify the parallel environment and the number of cores as needed. In this case, we use 8 cores.

```
#$ -l h_data=2G,h_rt=24:00:00,exclusive
```
:arrow_up: Very important! -l is used to request the type of resouces to be used. In this case, we use 2G memory (h_data=2G), maximum 24 hours rumtime (h_rt=24:00:00) and request a node in exlusive mode (exclusive), which means all of tis cores and memory. Here are some tips:
- The maximum runtime is 24 hrs on public nodes. If you have long simulation, you may need to ask private node or break it down into smaller simualtions.
- The more memory or runtime or exclusive you ask, you may need to wait longer in the queue but have a better computing performance.
- If you want to know more about requesting, please go [here](https://www.hoffman2.idre.ucla.edu/Using-H2/Computing/Computing.html#jobs-and-resources)
```
#$ -m bea
```
:arrow_up: -m defines when to notify the recipient with an email (in this case it will notify at the beginning 'b' of the job, in case of error 'e' and after 'a' the job completes).

```
source /u/local/Modules/default/init/modules.csh
module load intel/14.cs 
module load intelmpi/5.0.0 
```
:arrow_up: Not very important. This part is to load the job environment and module. 

```
mpirun -np 8 ~/LAMMPS_hoffman2/lmp_shared_voro -i in.glass >& in.glass.output.$JOB_ID
```
:arrow_up: Very important.This is a command used to run an MPI program. What you need to notice are:  
- The number 8 is the number of processes. Keep it the same as your requested number of nodes (-pe shared 8)!! For example, if you want to request more nodes, you have to change the number here and before.
- ~/LAMMPS_hoffman2/lmp_shared_voro: This means we will use the lmp_shared_voro from LAMMPS_hoffman2 folder in your login directory. This is why you should not change the folder name before.
- :warning: You HAVE TO make lmp_share_voro package **executable** (see next file to know how to do that)
- in.glass >& in.glass.output.$JOB_ID This means Hoffman2 will read <in.glass> file and output <in.glass.output.$JOB_ID> file. Need to change the name if you have different name for your input file.
