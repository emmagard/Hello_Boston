#Hello Boston

See live demo on [Heroku](http://helloboston.herokuapp.com/)

##Description
"Hello, Boston" is a community website for the city. There is a posting board for memebers to talk amongst themselves, a photo area that streams in instagram photos that are tagged with boston, an articles section, and a little weather to round things out. Sign-in or sign-up on the homepage to get started.

##Installation
This app requires secret keys from Instagram and Weather Underground.

* Fork and clone
* Create .env file
* Add .env to .gitignore file
* Add secret key and publishable keys to .env file with format:

  WUNDERGROUND_API_KEY=XXXXXXXXXXXXXXXXX 
  
  INSTAGRAM_API_CLIENT_ID=XXXXXXXXXXXXXXXXX
  
  INSTAGRAM_API_CLIENT_SECRET=XXXXXXXXXXXXXXXXXX
* Run bundle
* Run rake db:setup
* Enjoy!
