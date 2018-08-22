# PET SHOP ADMIN


### A Admin System

A system admin to manage many types of business, in this case, was used a Pet Shop Admin like example.

## Project Stack

* Repository
    * Github

* Development
    * Ruby On Rails
        * Libraries
            * Sidekiq
            * Fae
    * Redis
    * PostgreSQL
    * Mailcatcher
* Environment
    * Docker
    * Docker-compose

## Prerequisites

Have Docker installed in your machine


[See how to install Docker here](https://docs.docker.com/install/)


## Getting Started

* To see this application working in your machine, clone this project with:
```
git clone git@github.com:toticavalcanti/petshop_admin.git
```
### Installing PET SHOP ADMIN

* Gems install

To install the gems files run: 
```
docker-compose run --rm app bundle install
```

* Database creation

```
docker-compose run --rm app bundle exec rake db:create db:migrate
```
* Build the application
```
docker-compose build
```
* Up the application
```
docker-compose up
```
* Now, create your first user.
To do it access:
[http://localhost:3000/admin/first_user](http://localhost:3000/admin/first_user/)
