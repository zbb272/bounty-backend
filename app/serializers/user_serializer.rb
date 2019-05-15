class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :email, :password_digest, :github_url, :projects, :bounties
  # has_many :projects
  # has_many :bounties
end
