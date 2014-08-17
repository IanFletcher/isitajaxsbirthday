require 'rubygems'
require 'sinatra'
require './birthday_countdown'
require 'Haml'

get '/' do
  @countdown = BirthdayCountdown.new(8,16)
  haml @countdown.to_view, :layout => (request.xhr? ? false : :layout)
end 
