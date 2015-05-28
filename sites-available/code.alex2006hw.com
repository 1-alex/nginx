
server {

	root /home/www/code.alex2006hw.com;
	index index.html index.htm;

	# Make site accessible from http://localhost/
	server_name code code.alex2006hw.com;

	location / {
		proxy_pass http://127.0.0.1:9003;    
	}
    access_log /home/www/shared/log/code.alex2006hw-access.log;
    error_log /home/www/shared/log/code.alex2006hw-error.log;
    error_page 404 /404.html;
}
