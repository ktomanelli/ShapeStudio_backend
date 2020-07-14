class AssetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :file_path
end
