class RemoveUsersFromTalks < ActiveRecord::Migration[5.1]
  def up
    remove_column :talks, :users
  end
end
