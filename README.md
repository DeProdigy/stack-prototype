# Stack Prototype

## Users
######To create a user:

* make a `POST` to `/users` with a User hash format:

```
	{ user => { username: 'someone' } }
```

* if created successfully, expect an object with a new DB id:

```
	{ 'id' => 7, 'username' => 'someone' }
```



*  if not created, expect an `error` with a message

## Posts
######To get all the posts:
* make a `GET` to '/posts'
* if any posts exist, the response will be an array of user objects each with a posts property: 

```
	[
		{ 'id' => 42,
		  'content' => 'google.com',
		  'user_id' => 37,
		  'updated_at' => '2015-10-06T20:02:25.059Z',
		  'created_at' => '2015-10-06T20:02:25.059Z'
		 },
		 { 'id' => 43,
		   'content' => 'yahoo.com',
		   'user_id' => 37,
		   'updated_at' => '2015-10-06T20:02:25.061Z',
		   'created_at' => '2015-10-06T20:02:25.061Z'
		 }
	]
```


* if no posts exist, the response will be an empty array `[]`

######To create a post:

* make a `POST` to `/posts` with a `Post` hash format:

```
	{ post => { user_id: 'user-id, content: 'some-link' } }
```

* if created successfully, expect an object with a new DB id:

```
	{ 'id' => 3, 'content' => 'google.com', 'user_id' => '7' }
```
*  if not created, expect an `error` with a message


