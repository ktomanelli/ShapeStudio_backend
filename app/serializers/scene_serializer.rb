class SceneSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :scene_string, :save_name
end
