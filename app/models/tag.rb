class Tag < ApplicationRecord
  has_many :bounties, through: :bounty_tags
  has_many :users, through: :user_tags
end
