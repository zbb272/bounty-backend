class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :message, :user, :bounty, :project
end
