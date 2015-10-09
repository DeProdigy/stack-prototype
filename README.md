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
		{
		 	'id' => 41,
		   	'content' => 'medium.com/something',
		   	'content_type' => 'medium',
		   	'user_id' => 37,
		   	'comments' => [ ],
		   	'views' => [ ],
		   	'updated_at' => '2015-10-06T20:02:25.061Z',
		   	'created_at' => '2015-10-06T20:02:25.061Z'
		},
		{
			'id' => 42,
		  	'content' => 'soundcloud.com/some-track',
		  	'content_type' => 'soundcloud',
		  	'user_id' => 37,
		  	'comments' => [
		  		{
		  			'id' => '33',
  			  		'body' => 'I like stuff',
  			  		'post_id' => '12',
  			  		'user_id' => '21',
  		      		'created_at' => '2015-10-06T20:02:25.059Z',
  			  		'updated_at' => '2015-10-06T20:02:25.059Z'
  				}
		  	],
		  	'views' => [
		  		{
		  			'id' => '2',
  			  		'post_id' => '12',
  			  		'user_id' => '21',
  		      		'created_at' => '2015-10-06T20:02:25.059Z',
  			  		'updated_at' => '2015-10-06T20:02:25.059Z'
  			 	},
  			 	{
  			 		'id' => '3',
  			  		'post_id' => '12',
  			  		'user_id' => '23',
  		      		'created_at' => '2015-10-06T20:02:25.059Z',
  			  		'updated_at' => '2015-10-06T20:02:25.059Z'
  			 	}
		  	],
		  	'updated_at' => '2015-10-06T20:02:25.059Z',
		  	'created_at' => '2015-10-06T20:02:25.059Z'
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

## Comments
######To create a comment:

* make a `POST` to `/comments` with a `Comment` hash format:

```
	{ comment => { user_id: 'user-id, post_id: 'post-id, body: 'I like dogs' } }
```

* if created successfully, expect an object with a new DB id:

```
	{ 'id' => 3, 'body' => 'I like dogs', 'user_id' => '7', 'post_id' => '2' }
```
*  if not created, expect an `error` with a message

## Views
######To create a view:

* make a `POST` to `/views` with a `View` hash format:

```
	{ view => { user_id: 'user-id, post_id: 'post-id' } }
```

* if created successfully, expect an object with a new DB id:

```
	{ 'id' => 3, 'user_id' => '7', 'post_id' => '2' }
```
*  if not created, expect an `error` with a message