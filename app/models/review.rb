class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bounty, optional: true
  belongs_to :project, optional: true
end
