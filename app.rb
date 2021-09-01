require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

enable :sessions

get '/' do
    session[:test]
end

get '/input' do
    session[:test] = "Hello World!"
end