# Docker Deployment Instructions
Clone this Repository:  
``` 
git clone --recurse-submodules https://github.com/TheCamoc/bt-docker-deployment 
```

Replace backend_url in ```bt-smarthome-frontend/src/environments/environment.prod.txt```  
Build static files:  
``` 
npm install
ng build
```

Build docker Image:  
``` 
docker build --tag smarthome . 
```

Fill in environment variables in docker-compose.yml

Start Container (in detached mode):  
``` 
docker-compose up -d 
```

Default login is ```admin``` and ```kV9lkxVVwYi(Msf;(x9U```

Build & Push to ghcr
```
docker build --tag ghcr.io/thecamoc/smarthome:latest . 
docker push ghcr.io/thecamoc/smarthome:latest
```

Pulling from ghcr
```
docker pull ghcr.io/thecamoc/smarthome:latest
```