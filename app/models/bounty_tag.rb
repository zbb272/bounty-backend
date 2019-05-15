class BountyTag < ApplicationRecord
  belongs_to :bounty
  belongs_to :tag
end
