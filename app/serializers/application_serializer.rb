class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :message, :user, :bounty
  # belongs_to :project
  # belongs_to :user
end
