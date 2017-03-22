require 'sinatra'
require 'slim'
require 'sinatra/activerecord'
require './config/environments'

Dir[File.join(File.dirname(__FILE__), './lib/models', '*.rb')].each{|file| require file}

get '/' do
  @things = Thing.all
  slim :index
end

post '/add-thing' do
  @thing = Thing.new(params[:thing])
  if @thing.save
    redirect '/'
  else
    'An error has occured'
  end
end