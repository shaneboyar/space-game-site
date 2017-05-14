require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './score'
require './models/model'

get '/' do
  erb :index, locals: {scores: Model.all}
end

post '/' do
  @model = Model.new({name: params['name'], score: params['score'], date: params['date']})
  @model.save
  true
end