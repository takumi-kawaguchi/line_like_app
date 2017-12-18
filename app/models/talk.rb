class Talk < ApplicationRecord
  belongs_to :user
  serialize :users
end
