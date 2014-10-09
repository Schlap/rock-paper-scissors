require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class ROCKPAPERSCISSORS < Sinatra::Base
	Game = Game.new
	set :views, Proc.new { File.join(root, "..", "views") }
	enable :sessions

  get '/' do
  	@name = session[:me]
    erb :index
end

  post '/register' do
    session[:me] = params[:player_name]
    redirect '/'
end

   post '/result' do
    session[:me]
    session[:player_choice] = params[:rock]
    erb :result
end

  # post '/register' do
  # 	player = Player.new(name: params[:player_name])
  # 	Game.add player
  # 	session[:me] = params[:player_name]
  # 	session[:me_as_player_object] = player
  # 	redirect '/'
  # end

#   post '/result' do
#     @rock = session[:weapon]
#     session[:weapon] = [:choice]
#     erb :result
#   end

  # start the server if ruby file executed directly
  run! if app_file == $0
end