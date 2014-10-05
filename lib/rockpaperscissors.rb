require 'sinatra/base'
require_relative 'player'

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

  post '/ready_to_play' do
  	session[:me] = params[:player_name]
  	player = Player.new(name: @name)
  	@name = session[:me]
  	erb :ready_to_play
  end

  get '/ready_to_play' do
  	session[:me] = params[:player_name]
  	player = Player.new(name: @name)
  	@name = session[:me]
  	erb :ready_to_play
  end

  get '/choosing_a_sign' do
  	erb :choosing_a_sign
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end