require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class ROCKPAPERSCISSORS < Sinatra::Base
	
	set :views, Proc.new { File.join(root, "..", "views") }
	enable :sessions

  player = Player.new
  Game = Game.new(player)
  

  get '/' do
  	@name = session[:me]
    player = session[:me]
    erb :index
end

  post '/register' do
    session[:me] = params[:player_name]
    redirect '/'
end

   post '/result' do
    @game_weapon = Game.pick_weapon
    Game.pick_weapon
    session[:weapon1] = params[:rock]
    session[:weapon2] = params[:paper]
    session[:weapon3] = params[:scissors]
    @player_weapon1 = session[:weapon1]
    @player_weapon2 = session[:weapon2]
    @player_weapon3 = session[:weapon3]
    @winner = Game.winner
    @same_pick = Game.same_pick
    session[:me]
    erb :result 
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end