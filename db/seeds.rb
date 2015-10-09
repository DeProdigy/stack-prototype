# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all

User.create( username: 'Jano', posts: [
    Post.create( content: 'https://medium.com/@dhh/there-s-always-time-to-launch-your-dream-30f80826739d', content_type: 'medium' ),
    Post.create( content: 'https://www.youtube.com/watch?v=T24_uq0AY6o', content_type: 'youtube' ),
    Post.create( content: 'https://soundcloud.com/just-blaze/just-blaze-x-dj-soul-casino', content_type: 'soundcloud' )
  ]);

User.create( username: 'Nacho', posts: [
    Post.create( content: 'https://dribbble.com/shots/2278322-Adding-a-new-goal-animation', content_type: '' ),
    Post.create( content: 'https://medium.com/@hintology/the-ten-commandments-of-tech-culture-a903f5a4da1a', content_type: 'medium' )
  ]);

User.create( username: 'Blanco', posts: [
    Post.create( content: 'https://twitter.com/2CentCap/status/649259335411961856', content_type: '' ),
    Post.create( content: 'https://www.facebook.com/video.php?v=10153685866543896', content_type: '' ),
    Post.create( content: 'http://theserhythmsthissoul.tumblr.com/', content_type: '' ),
    Post.create( content: 'https://www.youtube.com/watch?v=stD9RycSXiU', content_type: 'youtube' ),
    Post.create( content: 'http://mashable.com/2015/10/06/surface-book-vs-macbook-pro/', content_type: '' )
  ]);
