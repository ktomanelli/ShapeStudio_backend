class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :activated
  has_many :scenes
  has_many :assets
end
