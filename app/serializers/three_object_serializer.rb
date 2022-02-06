class ThreeObjectSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id,
  :user_id,
  :save_name,
  :screenshot,
  :object_type,
  :name,
  :parent,
  :matrixAutoUpdate,
  :visible,
  :castShadow,
  :receiveShadow,
  :frustumCulled,
  :matrixWorldNeedsUpdate,
  :renderOrder,
  # :customDepthMaterial,
  # :customDistanceMaterial,
  :quaternion,
  :layers,
  :normalMatrix,
  :matrixWorld,
  :matrix,
  :modelViewMatrix,
  :up,
  :position,
  :rotation,
  :scale

  belongs_to :user
  def screenshot
    if object.screenshot.attached?
      rails_blob_path(object.screenshot, only_path: true)
    end
  end
end
