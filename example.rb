require 'sinatra'
require 'kuaipan'

get '/' do
  haml :index
end

extend 'kuaipan'
consumer_Key = "2942145647"
consumer_secret = "5cc0026c470a25a6070237e07ade5f27"
app_config = input_config consumer_key, consumer_secret

get '/connect' do
  k_session = g_session app_config, :oauth_callback => '' # here get rtoken 
  authorize_url = k_session[:authorize_url]
  session[:k_session] = k_session
  session[:ok] = true
  redirect authorize_url
end

get '/callback' do
  oauth_verifier = params[:oauth_verifier]
  # parse oauth_verifier client code
  k_session = k_session.set_atoken oauth_verifier # here set accesstoken
end

get '/logout' do
  p 'logou'
end
