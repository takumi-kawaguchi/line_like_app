class Talk < ApplicationRecord
  belongs_to :user, optional: true
  serialize :users
end
