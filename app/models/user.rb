class User < ApplicationRecord
  has_many :projects
  has_many :bounties
  has_many :tags, through: :user_tags
end
