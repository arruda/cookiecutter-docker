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

LICENSE
-------

This software is distributed using MIT license, see LICENSE file for more details.
