# Submit your job using qsub and script

## Make the LAMMPS package executable 
The very first thing you need to do is make your LAMMPS package executable (continue from last md file). This is one time job and here is how. 

- Login your Hoffman2 account
- Go to 'LAMMPS_hoffman2' folder (assume you didn't change the folder name) by 
```
cd LAMMPS_hoffman2
```
- Type 'ls' to check if you have those files. They should be in white or black color, which means they are normal files.
- Enter this command to make the file executable
```
chmod +x lmp_shared_voro
```
- Type 'ls'. Now, you should see the name of lmp_shared_voro in a different color (most case, it should be green), which means now it becomes an executable file.


## Run your simulation 
Now, running a simulation become the easiest thing to do.
- Login to the Hoffman, cd to the simu folder.
- To start the simulation, type
```
qsub run.hm2.shared
```
- Don't forget to check if your simulation successfully started by myjob
```
myjob
```

Congradulations!
