class AddColumnToTalks < ActiveRecord::Migration[5.1]
  def change
    add_column :talks, :users, :text
  end
end
