# EDTS_Dockerfile
Dockerfile to have the suite of routing, fuel and distance tools for Elite: Dangerous in a container

It is a very simple dockerfile, that builds a container based on Alpine:latest installs python2.7 and edts tools.
First time you build the image it will update the database and it will require quite some time (also depends on the hardware you run it at). At my Renegade (ROC-RK3328-CC) containerized takes a bit longer than one hour. 

The tools can be found at: https://bitbucket.org/Esvandiary/edts along with their instructions on how to use the tools.

I will also update an ARMhfv8 image on hub.docker.io if you want to save time just pull the image instead of building your own with this dockerfile. I will post the URL here once is done
