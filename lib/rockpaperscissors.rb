require 'sinatra/base'

class ROCKPAPERSCISSORS < Sinatra::Base
	set :views, Proc.new { File.join(root, "..", "views") }
	enable :sessions

  get '/' do
    erb :index
  end

  get '/registration' do
  	@name = session[:me]
  	erb :register
  end

  post '/' do
  	session[:me] = params[:player_name]
  	@name = session[:me]
  	erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end