cookiecutter-docker
===================

A cookiecutter template of files that I usually use in my new dockers.

Contents
--------

It uses 4 scripts:

* **wait_for_linked_lxc.sh**: used to make the docker wait for some linked container before doing anything else.
* **first_run.sh**: run at the first time the docker is started, after this a file `firstrun` is created in a volume
* **normal_run.sh**: if the file `firstrun` exist in a given volume, then run this script
* **start.sh**:  Wraps  everything up, and at the end execute the main process this docker should be responsible for.

It also sets the default locale as UTF-8 and does an `apt-get -qq update`.

Variables
---------

Check the [cookiecutter.json](cookiecutter.json) file for a list of variables used in this template project.

Usage
-----
First you need to install cookiecutter:

    pip install coockiecutter

then you can run it passing this repository:

    coockiecutter https://github.com/arruda/cookiecutter-docker.git

This will ask you what values you want for the variables in your own docker.

LICENSE
-------

This software is distributed using MIT license, see LICENSE file for more details.
