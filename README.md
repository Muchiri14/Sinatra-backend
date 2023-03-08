# Project Task Management API

This project management API is a simple web API where you make CRUD calls to a server to organize a project management app.


## Front-end Project Task Management Interface

You can use this API in conjunction with my front-end.

## Technologies Used in API

- Ruby
- ActiveRecord
- SQLite3
- Rack

## How To Use

Install it and run:

```sh
bundle install

# create migrations with activerecord
rake db:migrate

# if you would like to use seed data
rake db:seed

# start server
shotgun
```
To access the backend server containing users so as to login to the app click the following link http://127.0.0.1:9393/users


Shotgun uses port 9393 by default.

The path should return the users information data

## Relationships within Database

### Projects

- has many tasks
- has many todos and shopping list


### Tasks

- belongs to a board
- belongs to project though a board

## Example Calls You Can Make With API

### Tasks & Todos

You can make all CRUD calls for the information in the database.

- CREATE tasks
- GET/RETRIEVE all tasks
- GET/RETRIEVE individual task
- DELETE a task
- UPDATE a task

#### Example: Retrieve All Projects

Shows you projects and all of the tasks associated with the project

```js

fetch('http://localhost:9393/tasks')
      .then((res) => res.json())
      .then((data) => data.projects)


