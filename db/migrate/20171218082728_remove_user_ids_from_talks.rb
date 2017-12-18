class RemoveUserIdsFromTalks < ActiveRecord::Migration[5.1]
  def up
    remove_column :talks, :users_id
  end
end
