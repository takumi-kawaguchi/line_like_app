class Talk < ApplicationRecord
  has_many :messages
  validates :user_1_id, :user_2_id, presence: true
end
