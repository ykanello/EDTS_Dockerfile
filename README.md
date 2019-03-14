# EDTS_Dockerfile
## Dockerfile to have the suite of routing, fuel and distance tools for Elite: Dangerous in a container

It is a very simple dockerfile, that builds a container based on Alpine:latest installs python2.7 and edts tools.
First time you build the image it will update the database and it will require quite some time (also depends on the hardware you run it at). At my Renegade (ROC-RK3328-CC) containerized takes a bit longer than one hour. 

The tools can be found at: https://bitbucket.org/Esvandiary/edts along with their instructions on how to use the tools.

I will also update an ARMhfv8 image on hub.docker.io if you want to save time just pull the image instead of building your own with this dockerfile. I will post the URL here once is done

## How would I build the image
I would make a new folder on the machine I run docker, pull the Dockerfile and `docker build -t edts .` 
## How would I run the image
I would change directory into that I pulled the dockerfile, and run `docker run -ti --rm edts sh`
## How would I use the tools?
As it states in their repo/readme: `python ./distance.py Lave Sol Tionisla Diso Leesti Reorte Riedquat Teorge Zeonce` 
(to create a distance table for example)
## Acknowledgements 
All kudos go to https://bitbucket.org/Esvandiary/ Andy Martin that built the tools and sourced them :) 
