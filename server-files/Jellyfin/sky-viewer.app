server {
    listen 80;
    listen [::]:80;
    server_name sky-viewer.app *.sky-viewer.app;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;
    listen [::]:443 ssl;

    server_name sky-viewer.app *.sky-viewer.app;

    ssl_certificate /etc/letsencrypt/live/sky-viewer.app/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/sky-viewer.app/privkey.pem;

    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_prefer_server_ciphers on;

    root /var/www/sky-viewer.app/html;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}