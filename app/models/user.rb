class User < ApplicationRecord
  has_many :projects
  has_many :bounties
  has_many :applications
  has_many :user_tags
  has_many :tags, through: :user_tags
  has_many :reviews
end
