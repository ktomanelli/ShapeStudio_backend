class SceneSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :user_id, :scene_string, :save_name,:screenshot
  belongs_to :user
  def screenshot
    if object.screenshot.attached?
      rails_blob_path(object.screenshot, only_path: true)
    end
  end
end
