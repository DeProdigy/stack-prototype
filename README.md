# Stack Prototype

## Users
######To create a user:
* create a `POST` to `/users` with a `User` hash format:
`{ user => { username: 'someone' } }`
* if created successfully, expect an object with a new DB id:
`{ "id" => 7, "username" => "someone" }`
*  if not created, expect an `error` with a message

## Posts
######To create a post:

* create a `POST` to `/posts` with a `Post` hash format:
`{ post => { user_id: 'user-id', content: 'some-link' } }`
* if created successfully, expect an object with a new DB id:
`{ "id" => 3, "content" => "google.com", "user_id" => "7" }`
*  if not created, expect an `error` with a message
