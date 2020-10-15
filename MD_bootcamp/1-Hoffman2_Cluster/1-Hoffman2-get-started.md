# About Hoffman2

Hoffman2 is the supercomputer (or we call it "cluster") at UCLA.  
It is managed and operated by the Institute for Digital Research and Education (IDRE).

To run Molecular dynamics (MD) simulations, we cannot rely on our local machine because our jobs usually require huge computing power. So, it is necessary for us to at least have a Hoffman account and know how to connect and interact with your own computer.


**Link to Hoffman2 main page**
[Hoffman2 Documentation pape](https://www.hoffman2.idre.ucla.edu/index.html)

## Create a Hoffman2 Account
1. [Go to this page](https://www.hoffman2.idre.ucla.edu/Accounts/Requesting-an-account.html#applying-for-a-user-account)
2. Click "Register Here!" under **Applying for a user account**
3. You will need verify your UCLA account with DUO
4. Fill the Form
   1. Choose **Mathieu Bauchy** as your sponser
   2. Preferred Shell: Bash (! I have no idea, so bash)
   3. For Project Description, you can say "Conduct molecular dynamics simulations to glass study"
5. Submit


Note that Hoffman2 can not only run MD simution, but also other scripts (i.e., Matlab, python) for your tasks. 

## Login to Hoffman2 and reset password
1. [Go to this page](https://www.hoffman2.idre.ucla.edu/Using-H2/Connecting/Connecting.html), I recommend choosing "connect via terminal and SSH"
   1. For Mac users, you can use your Terminal (not need to download anything)
   2. For Windows users, you can follow the instructions.  
   I recommend using GitBash (also good for GitHub), but feel free to choose
2. Follow instructions on this page based on your system and software to connect.  
   **NOTE: you will not see anything displayed when you type in your password, but it is there.**

3. To reset password into **group password**,  
   login, then use command
   ```
   passwd
   ```
   follow the instructions and you will be able to reset password.  
   **NOTE: Please contact Kai or your team leader for the group password.**


## Data transfer
check [this page](https://www.hoffman2.idre.ucla.edu/Using-H2/Data-transfer.html#) for more information
1. If you are familiar with linux command, you can use it
2. If you prefer File Explore or Finder style, you need to download a tool.
   I recommend FileZilla (example below), but you can use CyberDuck
3. Download [FileZilla](https://filezilla-project.org/)
4. To connect to your Hoffman2 account
   1. Go >File > Site Manager
   2. Select SFTP as your protocol
   3. Enter "hoffman2.idre.ucla.edu" as Host
   4. Enter your user name (everything before @)
   5. Enter group password (reset password)
   6. Click Connect
5. Now, you will be able to transfer files between your own local machine and Hoffman node, just drag them. 


## congratulations!

   

  





