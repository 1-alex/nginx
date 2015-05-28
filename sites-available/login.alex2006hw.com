
server {

	root /home/www/login.alex2006hw.com;
	index index.html index.htm;

	server_name login.alex2006hw.com;

	location / {
		proxy_pass http://127.0.0.1:9002;    
	}
    access_log /home/www/shared/log/login.alex2006hw-access.log;
    error_log /home/www/shared/log/login.alex2006hw-error.log;
    error_page 404 /404.html;
}
