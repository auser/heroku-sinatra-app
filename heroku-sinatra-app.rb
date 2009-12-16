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
      <pre><code>
      f().
      App = apps:find_by_name("quick-balloon-08slv").
      {ok, P} = app_updater_fsm:start_link(App).
      app_updater_fsm:go(P, self()).
      receive X -> X after 300 -> ok end.
      </code></pre>
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
