class BountySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :amount, :user, :project, :applications, :tags
  # belongs_to :project
  # belongs_to :user
end
