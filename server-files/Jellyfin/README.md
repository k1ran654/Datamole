These are all files from the server


File structure is:


~/Docker_stuff (you can name this one whatever you want)

 Jellyfin   certbot   docker-compose.yml   nginx   'nginx_[docker]'

./Jellyfin:
cache  config  media

./Jellyfin/cache:
transcodes

./Jellyfin/cache/transcodes:

./Jellyfin/config:
config  data  log  metadata  plugins  root

./Jellyfin/config/config:
database.xml  encoding.xml  logging.default.json  network.xml  system.xml

./Jellyfin/config/data:
SQLiteBackups  ScheduledTasks  device.txt  jellyfin.db  jellyfin.db-shm  jellyfin.db-wal  playlists

./Jellyfin/config/data/SQLiteBackups:

./Jellyfin/config/data/ScheduledTasks:
0c9ee3a8-8fc1-5547-c685-2205480da1fd.js  7738148f-fcd0-7979-c7ce-b148e06b3aed.js
1c8ede62-c521-bea0-bf85-1344f5b8ca40.js  7d8088c1-0902-f1bf-4072-ded42437bcfb.js
241d4fcb-19a1-d557-ee62-428e411da609.js  866456ed-0d44-e154-6812-4ce33d85961e.js
26649fe0-aad5-7557-2453-51f220da916c.js  bea9b218-c97b-bf98-c5dc-1303bdb9a0ca.js
2c66a88b-ca43-e565-d7f8-099f825478f1.js  ec2f221f-d8e7-706b-3d3a-fd2c4591b4d7.js
31de9ce8-3b92-23d3-38c7-7b1a635e144b.js  f861734d-d71b-37f9-482b-52a820e39013.js
3a025083-141d-3c17-dd96-d5f9b951287b.js  f9b057c0-54e9-e6da-ee4a-88ffd146a403.js

./Jellyfin/config/data/playlists:

./Jellyfin/config/log:
log_20260519.log  log_20260520.log

./Jellyfin/config/metadata:
People  views

./Jellyfin/config/metadata/People:

./Jellyfin/config/metadata/views:
livetv

./Jellyfin/config/metadata/views/livetv:

./Jellyfin/config/plugins:
configurations

./Jellyfin/config/plugins/configurations:
Jellyfin.Plugin.MusicBrainz.xml  Jellyfin.Plugin.Tmdb.xml

./Jellyfin/config/root:
default

./Jellyfin/config/root/default:
Movies  Shows

./Jellyfin/config/root/default/Movies:
movies.collection  movies.mblink  options.xml

./Jellyfin/config/root/default/Shows:
options.xml  tvshows.collection  tvshows.mblink

./Jellyfin/media:
movies  tvshows

./Jellyfin/media/movies:

./Jellyfin/media/tvshows:

./certbot:
conf

./certbot/conf:
live

./certbot/conf/live:
test.random.io

./certbot/conf/live/test.random.io:

./nginx:

'./nginx_[docker]':
jellyfin.conf






/etc/nginx/ (Automatically created by installing nginx on server)

conf.d        fastcgi_params  koi-win     modules-available  nginx.conf    scgi_params      sites-enabled  uwsgi_params
fastcgi.conf  koi-utf         mime.types  modules-enabled    proxy_params  sites-available  snippets       win-utf

./conf.d:
jellyfin.conf

./modules-available:

./modules-enabled:

./sites-available:
default  sky-viewer.app

./sites-enabled:
default

./snippets:
fastcgi-php.conf  snakeoil.conf