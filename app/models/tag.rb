class Tag < ApplicationRecord
  has_many :bounty_tags
  has_many :user_tags
  has_many :bounties, through: :bounty_tags
  has_many :users, through: :user_tags
end
