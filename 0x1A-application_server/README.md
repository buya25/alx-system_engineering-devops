## Task 0: Set up development with Python

### Requirements
1. Ensure task #3 of your SSH project is completed for web-01.
2. Install the net-tools package on your server: `sudo apt install -y net-tools`
3. Git clone your AirBnB_clone_v2 on your web-01 server.
4. Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port 5000.
5. Your Flask application object must be named `app`.

### Example

Window 1:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ python3 -m web_flask.0-hello_route
 * Serving Flask app "0-hello_route" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
35.231.193.217 - - [02/May/2019 22:19:42] "GET /airbnb-onepage/ HTTP/1.1" 200 -
```

Window 2:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
ubuntu@229-web-01:~/AirBnB_clone_v2$
```

## Task 1: Set up production with Gunicorn

### Requirements
1. Install Gunicorn and any other libraries required by your application.
2. The Flask application object should be called `app`.
3. Serve the same content from the same route as in Task 0 on port 5000.
4. Make sure nothing is listening on port 6000.

### Example

Terminal 1:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[2019-05-03 20:47:20 +0000] [3595] [INFO] Starting gunicorn 19.9.0
[2019-05-03 20:47:20 +0000] [3595] [INFO] Listening at: http://0.0.0.0:5000 (3595)
[2019-05-03 20:47:20 +0000] [3595] [INFO] Using worker: sync
[2019-05-03 20:47:20 +0000] [3598] [INFO] Booting worker with pid: 3598
```

Terminal 2:
```bash
ubuntu@229-web-01:~$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
ubuntu@229-web-01:~$
```

## Task 2: Serve a page with Nginx

### Requirements
1. Configure Nginx to serve your page from the route `/airbnb-onepage/`.
2. Nginx must serve this page both locally and on its public IP on port 80.
3. Nginx should proxy requests to the process listening on port 5000.
4. Include your Nginx config file as `2-app_server-nginx_config`.

### Example

On my server:
Window 1:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[2019-05-06 20:43:57 +0000] [14026] [INFO] Starting gunicorn 19.9.0
[2019-05-06 20:43:57 +0000] [14026] [INFO] Listening at: http://0.0.0.0:5000 (14026)
[2019-05-06 20:43:57 +0000] [14026] [INFO] Using worker: sync
[2019-05-06 20:43:57 +0000] [14029] [INFO] Booting worker with pid: 14029
```

Window 2:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
ubuntu@229-web-01:~/AirBnB_clone_v2$
```

On my local terminal:
```bash
vagrant@ubuntu-xenial:~$ curl -sI 35.231.193.217/airbnb-onepage/
HTTP/1.1 200 OK
Server: nginx/1.10.3 (Ubuntu)
Date: Mon, 06 May 2019 20:44:55 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 11
Connection: keep-alive
X-Served-By: 229-web-01

vagrant@ubuntu-xenial:~$ curl 35.231.193.217/airbnb-onepage/
Hello HBNB!
vagrant@ubuntu-xenial:~$
```

## Task 3: Add a route with query parameters

### Requirements
1. Configure Nginx to proxy requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance listening on port 5001.
2. Nginx must serve this page both locally and on its public IP on port 80.
3. Include your Nginx config file as `3-app_server-nginx_config`.

### Tips
- Check out articles/docs on Nginx configuration.

### Example

Terminal 1:
```bash
ubuntu@229-web-01:~/AirBnB_clone_v2$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app'
ubuntu@229-web-01:~/AirBnB_clone_v2$ pgrep gunicorn
1661
1665
ubuntu@229-web-01:~/AirBnB_clone_v2$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5001 web_flask.6-number_odd_or_even:app'
ubuntu@229-web-01:~/AirBnB_clone_v2$ pgrep gunicorn
1661
1665
1684
1688

ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
ubuntu@229-web-01:~/AirBnB_clone_v2$

ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5001/number_odd_or_even/6
<!DOCTYPE
