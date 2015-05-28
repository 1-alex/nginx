
server {

	root /home/www/casted3d.com/backend;
	index index.html index.htm;

	server_name casted3d.com;

	location / {
		proxy_pass http://127.0.0.1:5000;    
	}
    access_log /home/www/shared/log/casted3d-access.log;
    error_log /home/www/shared/log/casted3d-error.log;
    error_page 404 /404.html;
}
