class TalksController < ApplicationController
  def index
    @talks = Talk.where(user_1_id: current_user.id)
                 .or(Talk.where(user_2_id: current_user.id)).all
  end

  def show
    @talk = Talk.find(params[:id])
  end

  def new
    @talk = Talk.new
    @users = User.all
  end

  def create
    @talk = Talk.create(talk_params)
    if @talk.save!
      redirect_to talk_messages_path(@talk.id)
    else
      render 'new'
    end
  end

  def destory
  end

private
  def talk_params
    params.require(:talk).permit(:title, :user_1_id, :user_2_id)
  end
end
