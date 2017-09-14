server {
    listen  80;

    root {{ nginx.docroot }};
    index index.html index.php;

    server_name {{ nginx.servername }};

#    access_log /var/log/{{ nginx.servername }}/access.log;
#    error_log /var/log/{{ nginx.servername }}/error.log;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }
    location ~ \.php$ {
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/var/run/php/php7.1-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
    error_page 404 /404.html;

   # error_page 500 502 503 504 /50x.html;
   # location = /50x.html {
   #     root /usr/share/nginx/www;
   # }

}


