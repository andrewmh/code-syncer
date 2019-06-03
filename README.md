# Code Syncer

Code syncer is designed to allow users to edit code in a repo on their local environment and automatically
sync that code to a vm where the code can be run remotely. This is nice for vms that are low on memory so editing
code directly on the VM sucks and you can't easily mount a directory to the VM.

## Instructions

Run install.sh to setup code-syncer locally

This will install some depedencies and place the scripts in a place where they can be executed anywhere.

## Running

### watch-sync

watch-sync [local_repo] [remote_location] [remote_repo]

watch-sync will watch the local_repo directory and push changes to the remote directory. It will delete all files that don't exist locally
unless those files are listed in a .gitignore file in the remote repo. watch-sync runs sync-code each time a file system item changes locally.

local_repo is the location you want to watch and rsync from. This would be the editing environment. For example, ~/lucid/main.
remote_location is the username/server address for the remote repo. For example, andy@andy.office.lucidchart.com or andy.office.lucidchart.com
remote_repo is the lcoation you want to sync to. This would be the environment running code. For example, /home/andy/lucid/main

### sync-code

sync-code [local_repo] [remote_location] [remote_repo]

Run to sync code from local repo to remote. See watch-sync for more details.

