class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :activated, :show_notice
  has_many :projects
end
