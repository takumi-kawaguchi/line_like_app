class AddIdsToTalks < ActiveRecord::Migration[5.1]
  def change
      add_column :talks, :user_1_id, :integer
      add_column :talks, :user_2_id, :integer
  end
end
