# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

### Deployment instructions
  1. Deploy to staging
     - ssh-keygen -t rsa -b 4096 -C "email@example.com" -f /path/to/project/.ssh/id_rsa
     - docker-compose up vps -d
     - ssh-add .ssh/id_rsa
     - ssh-add -l
     - ssh-copy-id -i .ssh/id_rsa.pub deploy@0.0.0.0
     - ssh deploy@0.0.0.0
* ...
