# Resurrect-dead-Nifi

A simple way to automate a ressurection of a "zombie" Nifi container

If you work with nifi servers, eventually you already been left with the processes as if they were running but in reality the server is no longer responding. There are several ways to solve this problem, one of which is to restart the container. The problem with this alternative is the loss of flowfiles, including those in the queues. This script is intended to automate a copy of all files in the zombie container and recreate it with another name and another port mapping with all states and loaded queues.

Files explanation:

download_files.sh: backup scritp. Copy of source directories and files to the local current directory in order to to recreate the old nifi container

Dockerfile: text document that contains all the commands a user could call on the command line to assemble an image. In this case, also copy the backup files to new nifi container will be created.

build_run.sh: receives the parameters of the old container, name of the new container and port mapping, calls the backup script, builds and runs the new container

delete_directories.sh: a simple script to clean the backup files


Step-by-step:

1.Copy the template-docker-restore
2.Change the Dockerfile, download_files.sh or build_run.sh as you need
3.run build_run.sh
