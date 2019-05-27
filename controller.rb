require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game.rb')
also_reload('./models/*')

get '/:arg1/:arg2' do
  game = Game.new(params[:arg1], params[:arg2])
  @gameplay = game.play
  erb (:result)
end

get '/welcome' do
  erb (:welcome)
end
