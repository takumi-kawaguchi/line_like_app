module TalksHelper
  def talk_already_exists?(user)
    Talk.where(user_1_id: current_user.id, user_2_id: user.id).count >= 1 || Talk.where(user_1_id: current_user.id, user_2_id: user.id).count >= 1
  end

  def existing_talk(user)
    Talk.where(user_1_id: current_user.id, user_2_id: user.id)
      .or(Talk.where(user_1_id: user.id, user_2_id: current_user.id)).first
  end
end
