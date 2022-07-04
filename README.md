# Docker Deployment Instructions
Clone this Repository:  
``` 
git clone --recurse-submodules https://github.com/TheCamoc/bt-docker-deployment 
```

Replace backend_url in ```bt-smarthome-frontend/src/environments/environment.prod.txt```  
Build static files:  
``` 
npm install
ng build --configuration=production 
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