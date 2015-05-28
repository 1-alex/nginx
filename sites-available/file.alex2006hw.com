
server {

	root /home/www/file.alex2006hw.com;
	index index.html index.htm;

	server_name file.alex2006hw.com;

	location / {
		proxy_pass http://127.0.0.1:9000;    
	}
    access_log /home/www/shared/log/file.alex2006hw-access.log;
    error_log /home/www/shared/log/file.alex2006hw-error.log;
    error_page 404 /404.html;
}
