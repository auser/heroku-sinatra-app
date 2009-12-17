# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Quick test
get '/' do
  <<-EOE
  <html>
    <head>
      <title>Honey, Please</title>
    </head>
    <body>
      <h1>Hi</h1>
      <p>This is so much fun!</p>
      <h5>I'm tired</h5>
      OMG, please!
    </body>
    </html>
  EOE
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

get '/env' do
  ENV.inspect
end
