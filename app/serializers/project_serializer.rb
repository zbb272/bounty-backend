class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :progress, :github_url, :user, :bounties, :reviews
  # has_many :bounties
  # belongs_to :user
end
