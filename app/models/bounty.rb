class Bounty < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project
  has_many   :applications
  has_many   :tags, through: :bounty_tags
end
