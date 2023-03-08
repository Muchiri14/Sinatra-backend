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

## Relationships within Database

### Projects

- has many boards
- has many tasks through boards

### Boards

- belongs to a project
- has many tasks

### Tasks

- belongs to a board
- belongs to project though a board

## Example Calls You Can Make With API

### Projects

You can make all CRUD calls for the projects database.

- CREATE projects
- GET/RETRIEVE all projects
- GET/RETRIEVE individual project
- DELETE a project
- UPDATE a project

#### Example: Retrieve All Projects

Shows you projects and all of the tasks associated with the project

```js

fetch('http://localhost:9393/projects')
      .then((res) => res.json())
      .then((data) => data.projects)


