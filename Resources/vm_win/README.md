# I need a Windows for the MSMQ task!

In the following is a step by step guide to get you a Windows 10 in a VM on MacOS and Linux.

If you do not already have VirtualBox and Vagrant installed, do it now

  * Download and install VirtualBox (https://www.virtualbox.org/wiki/Downloads)
  * Download and install Vagrant (https://www.vagrantup.com/downloads.html)

Now, you can setup the VM.

  * Clone this repository into a directory of your choice (`/path/to/`):

    ```
    git clone https://github.com/datsoftlyngby/soft2018fall-si-teaching-material.git
    ```

  * On the command line change directory to where you cloned this repository (`/path/to/cloned/repo/vm`). Likely, it is just:
  
    ```bash
    cd ./soft2018fall-si-teaching-material/vm_win
    ```
  * Subsequently, start up the VM, which will take a bit on the first start up as it has to download the Windows image and a bit of other software.
    ```bash
    vagrant up
    ```
  * After a bit of waiting a window should show you a Windows Home Screen.
  * You can log-in as user `vagrant` with password `vagrant`



Now, download and setup Visual Studio Express for C# for your task.