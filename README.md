# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# CMD​​ ["bin/rails", "s", "-b", "0.0.0.0"]​
# docker build .
# list docker containers are running
# docker ps -a
# choose an image
# -p localhost:container_port
# ​--rm​​  después de run para eliminar el contenedor   
# docker run -p 3000:3000 <imageid> bin/rails s -b 0.0.0.0
# docker run -p 80:3000 44ad4bd32acc bin/rails s -b 0.0.0.0
# use taged image 
# docker tag <imageid> <tag>
# build with tag docker​​ ​​build​​ ​​-t​​ <tagname>​ .
# docker ​​build​​ ​​-t​​ ​​railsapp​​ ​​.​
# docker run -p 3000:3000 railsapp bin/rails s -b 0.0.0.0
# run docker and see the tasks
# -T de tasks para ver el listado de estas
# docker run --rm railsapp bin/rails -T
# Capítulo 4
# page 85
# build compose
# docker-compose build
# docker-compose up
# add postgres 12 and port to connect locally
# Update your lock bundle
# docker run --rm -v $(pwd):/usr/src/app -w /usr/src/app ruby:2.7.1 bundle lock --update
# run in silence
# docker-compose up -d
# page 96