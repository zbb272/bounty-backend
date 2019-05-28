class Bounty < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project
  has_many   :applications
  has_many   :reviews
  has_many   :bounty_tags
  has_many   :tags, through: :bounty_tags
end
