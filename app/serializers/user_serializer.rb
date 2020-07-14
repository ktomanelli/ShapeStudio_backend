class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :activated
end
