class Bounty < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project
  has_many   :tags, through: :bounty_tags
end
