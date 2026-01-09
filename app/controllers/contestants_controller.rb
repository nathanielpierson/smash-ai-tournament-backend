class ContestantsController < ApplicationController
  def index
    @contestants = Contestant.all
    render :index
  end
  def show
    @contestant = Contestant.find_by(id: params[:id])
    render :show
  end
end
