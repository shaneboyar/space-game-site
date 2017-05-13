require 'sinatra'
require './score'

$scores = Array.new

get '/' do
  erb :index, locals: {scores: $scores}
end

post '/' do
  $scores << Score.new(params['name'], params['score'], params['date'])
  true
end