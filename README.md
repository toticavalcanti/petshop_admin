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

Run:

```
docker-compose run --rm app bundle install
```

The command above install all Gem of the Gemfile.</br>
Now let's create the database and make migration.</br>
To do this, run:

```
docker-compose run --rm app bundle exec rake db:create db:migrate
```

End with an example of getting some data out of the system or using it for a little demo

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
