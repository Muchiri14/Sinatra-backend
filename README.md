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

The path should return the following data
[
{
"id": 1,
"username": "Daniel Muchiri",
"email_address": "muchiridaniel59@gmail.com",
"password_digest": "$2a$12$srnxWoGa863gBWj256VBq.iaFIbyztA4Z2TRX/QSgI5g3/WgKH07m",
"budget": null,
"created_at": "2023-03-08T06:19:31.041Z",
"updated_at": "2023-03-08T06:19:31.041Z"
},
{
"id": 2,
"username": "Kevin",
"email_address": "kevin@mail.com",
"password_digest": "$2a$12$sZZTO4YOsXBRzITq/zTrJeUSNIjSkDFwQsOG0dejgbliGkRBCOi0u",
"budget": null,
"created_at": "2023-03-08T06:19:31.237Z",
"updated_at": "2023-03-08T06:19:31.237Z"
},
{
"id": 3,
"username": "James",
"email_address": "james@mail.com",
"password_digest": "$2a$12$CfYJSmOwNTdSAutdqZTHOO3viRgqENJXsNo5qsfOm15xTYA2xoi1a",
"budget": null,
"created_at": "2023-03-08T06:19:31.431Z",
"updated_at": "2023-03-08T06:19:31.431Z"
},
{
"id": 4,
"username": "Brad",
"email_address": "brad@mail.com",
"password_digest": "$2a$12$6/pVsxQ4.dMIYEQXVvDldem6RGquNVUOCbYvtgyZWdCe7rfTAGGJ.",
"budget": null,
"created_at": "2023-03-08T06:19:31.625Z",
"updated_at": "2023-03-08T06:19:31.625Z"
}
]

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


