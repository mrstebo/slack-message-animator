require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'highline/import'

Dir["lib/**/*.rb"].each {|file| require_relative file }

animations = [
  {name: 'people', animation: PersonAnimation.new(['me'])},
  {name: 'dog-car', animation: DogCarAnimation.new},
  {name: 'dog-car-punkd', animation: DogCarPunkdAnimation.new},
  {name: 'rolling-face', animation: RollingFaceAnimation.new},
  {name: 'donald-trump-quotes', animation: DonaldTrumpQuotesAnimation.new},
  {name: 'clock', animation: ClockAnimation.new},
  {name: 'merry-christmas-everyone-lyrics', animation: MerryChristmasEveryoneLyricsAnimation.new},
  {name: 'pokemon-theme-song-lyrics', animation: PokemonThemeSongLyricsAnimation.new}
]
selections = animations.each_with_index.map {|animation, index| "#{index + 1}: #{animation[:name]}"}.join("\n")
animation = ask("What animation do you want to play?\n" + selections) {|q| q.echo = true}
selected_animation = animations[animation.to_i - 1][:animation]
team_name = ask('What is your Slack team name?') {|q| q.echo = true}
email = ask('What is your email address?') {|q| q.echo = true}
password = ask('What is your password?') {|q| q.echo = '*'}
channel = ask('What channel do you want to send a message to?') {|q| q.echo = true}
session = SessionInitializer.init(team_name, email, password, channel)
runner = AnimationRunner.new(session, selected_animation)

runner.animate
