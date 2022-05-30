# perl-pollenflug, but now with Catalyst MVC

# deploy

build the app:

`docker build -t pollenflug .`

`docker run --name pollenflug-app --hostname pollenflug-app -d -it pollenflug:latest`

build apache server:

`cd apache && docker build -t pollenflug-apache .`

`docker run --link pollenflug-app:pollenflug-app --hostname pollenflug-apache --name pollenflug-apache -d -it pollenflug-apache:latest`
