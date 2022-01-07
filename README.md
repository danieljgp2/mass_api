# README

## Follow the instructions to start the project

## This projects follows and use the RUBOCOP linter rules to keep the code clean and fancy

* Ruby version
    - ruby 2.7.5 (necessary)
    - rails 6.1.4 (necessary)
* Node Version
    - node 14.17.0 (recommended)
* Postgres
    - 14.1 (recommended)

## Running the following commands is necessary to start playing:

```
bundle install
rake db:create
rake db:migrate
rake db:seed
```

## Important model documentation to keep in mind if the user wants to create models using the rails console

* Service
  - A service MUST have a name
  - A service MUST have a setting
    - A setting MUST have 7 days, each day has a start and end number,
  these numbers indicates the minimum hour and maximum hour for each also day 
  name is unique and can not be repeated for each setting
    - A setting MUST have a spaces_between_work_shifts, this field indicates 
  how many spaces between the work shifts must exist

## To keep in mind

* The master key is versioned on git so any person can start to play with the project
without any extra requirement
  
## Start the server
```
rails server
```
