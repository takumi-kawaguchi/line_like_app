class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def show
    @talk = Talk.find(params[:id])
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.create(talk_params)
    if @talk.save!
      redirect_to talk_path(@talk)
    else
      render 'new'  
    end
  end

  def destory
  end

private
  def talk_params
    params.require(:talk).permit(:title, users: [])
  end
end