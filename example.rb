require "rubygems"
require "bundler/setup"

require 'sinatra'
require 'kuaipan'
require 'haml'
enable :sessions
get '/' do
  session[:k_session] = nil
  haml :index
end

extend Kuaipan::OpenAPI

consumer_token = "xcWcZhCNKFJz1H8p"
consumer_secret = "8RvkM0aGYiQF5kJF"
input_config consumer_token, consumer_secret

get '/connect' do
  extend Kuaipan::OpenAPI
  k_session = g_session :oauth_callback => "http://#{request.env["HTTP_HOST"]}/callback" # here get rtoken 
  authorize_url = k_session[:authorize_url]
  session[:k_session] = k_session
  redirect authorize_url
end

get '/callback' do
  oauth_verifier = params[:oauth_verifier]
  # parse oauth_verifier client code
  session[:k_session].set_atoken oauth_verifier # here set accesstoken
  redirect '/user_info'
end

get '/user_info' do
  haml :index
end

get '/logout' do
  p 'logout'
end
