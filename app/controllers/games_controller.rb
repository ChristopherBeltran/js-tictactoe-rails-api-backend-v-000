class GamesController < ApplicationController
  # Add your GamesController code here

def index
  @games = Game.all
  render json: @games, status: 200
end

def create
  @game = Game.new
  @game.state = params[:state]
  @game.save
  render json: @game, status: 201
end

def show
  @game = Game.find(params[:id])
  render json: @game, status: 200
end

def update
  @game = Game.find(params[:id])
  @game.state = params[:state]
  @game.save
end


end
