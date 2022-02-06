class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :activated, :show_notice
  has_many :three_objects
  has_many :assets
end
