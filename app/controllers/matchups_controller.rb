class MatchupsController < ApplicationController
  def index
    @matchups = Matchup.all
    render :index
  end

  def show
    @matchup = Matchup.find(params[:id])
    render :show
  end
end
