In this case, flask App is running on port 8000, and Nginx as a reverse proxy acts like middleman. When Nginx recieves requests from users on port 80, it forwards them to port 8000 where the flask App is located. 

The benefit of using Nginx as a reverse proxy: Instead of using http://<domain>:8000, users can visit http://<domain>. This makes URL more cleaner and easier for users. At the same time, it prevents the server from revealing their actual location. 


As far as I learned online, this method also helps improve load balancing if we have multiple servers, then Nginx can distribute the requests to different servers depending on current load.