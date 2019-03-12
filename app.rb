require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  get '/checkout' do
    @item = params[:item]
    session["item"] = @item
    erb :checkout
  end

end
