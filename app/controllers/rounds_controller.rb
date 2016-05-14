class RoundsController < ApplicationController

    def show
      @round = Round.find_by(id: params[:id])
      @prompt = @round.prompt
      @user = User.find_by(id: session[:user_id])
    end

    def index
      @user = User.find_by(id: params[:user_id])
      @rounds = open_rounds(@user)
    end

    def new
    end

end