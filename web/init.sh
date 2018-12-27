
#sudo nano /etc/nginx/sites-enabled/nginx.conf
#cp /home/parallels/stepic_web_project/web/etc/nginx.conf /etc/nginx/sites-enabled/
#sudo unlink /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart
cd /home/parallels/stepic_web_project/web/ask/
gunicorn -b 0.0.0.0:8000 ask.wsgi:application &
cd /home/parallels/stepic_web_project/web/hello/
gunicorn -b 0.0.0.0:8080 hello:app &

