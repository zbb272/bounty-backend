class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :email, :password_digest, :github_url, :projects, :bounties, :applications, :reviews, :tags
  # has_many :projects
  # has_many :bounties
end
