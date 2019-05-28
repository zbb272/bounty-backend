class Project < ApplicationRecord
  belongs_to :user
  has_many :bounties
  has_many :reviews
end
