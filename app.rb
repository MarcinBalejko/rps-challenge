require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/names' do
        player_1 = Player.new(params[:player_1_name])
        $game = Game.new(player_1)
        redirect '/play'
    end

    get '/play' do
        erb :play
    end

    post '/choice' do
        the_choice = params[:choice]
        $game.player_1.make_choice(the_choice)
        redirect '/results'
    end

    get '/results' do
        erb :results
    end

    run! if app_file == $0
end