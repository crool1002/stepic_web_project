sudo ﻿cp /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ls -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
﻿sudo /etc/init.d/mysql start﻿
cd /home/box/web/hello/
gunicorn -d 0.0.0.0:8080 hello:app
