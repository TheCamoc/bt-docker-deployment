# Docker Deployment Instructions
## Pulling Docker Container from GitHub Container Registry
```
docker pull ghcr.io/thecamoc/smarthome:latest
```
Fill in environment variables in docker-compose.yml and start Container (in detached mode):  
``` 
docker-compose up -d 
```
Default login is ```admin``` and ```kV9lkxVVwYi(Msf;(x9U```
## Manual Docker build
Clone this Repository:  
``` 
git clone --recurse-submodules https://github.com/TheCamoc/bt-docker-deployment 
```

Build static files:  
``` 
cd bt-smarthome-frontend
npm install
ng build
```

Build docker Image:  
``` 
docker build --tag smarthome . 
```

Fill in environment variables in docker-compose.yml and start Container (in detached mode):  
``` 
docker-compose up -d 
```

Default login is ```admin``` and ```kV9lkxVVwYi(Msf;(x9U```
