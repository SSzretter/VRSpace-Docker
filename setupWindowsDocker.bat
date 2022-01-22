REM MOUNTPOINT FOR VRSPACE FILES ON LOCAL WINDOWS HOST
mkdir C:\vrspace
git clone https://github.com/jalmasi/vrspace C:\vrspace
COPY compileVRSpace.sh C:\vrspace
docker build -f C:\VRSpace-Docker\Dockerfile -t vrspace .
docker create --name vrspace --rm -p 8080:8080 -v "C:\vrspace:/vrspace" -t vrspace:latest /bin/bash -l
docker start vrspace