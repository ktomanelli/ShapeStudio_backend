class CreateMaterialsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :materials, id: :uuid do |t|
      t.uuid :project_id
      t.float :alphaTest
      t.boolean :alphaToCoverage
      t.float :blendDstAlpha
      t.float :blendEquationAlpha
      t.float :blendSrcAlpha
      t.boolean :clipShadows
      t.boolean :colorWrite
      t.boolean :clipIntersection
      t.boolean :depthTest
      t.boolean :depthWrite
      t.boolean :fog
      t.boolean :stencilWrite
      t.float :stencilRef
      t.float :stencilWriteMask
      t.float :stencilFuncMask
      t.string :name
      t.boolean :needsUpdate
      t.float :opacity
      t.boolean :polygonOffset
      t.float :polygonOffsetFactor
      t.float :polygonOffsetUnits
      t.string :precision
      t.boolean :premultipliedAlpha
      t.boolean :dithering
      t.boolean :toneMapped
      t.boolean :transparent
      t.string :object_type
      t.boolean :vertexColors
      t.boolean :visible
      t.float :version
      t.string :blendDst
      t.string :blendEquation
      t.string :blending
      t.string  :blendSrc
      t.jsonb :clippingPlanes
      t.jsonb :defines
      t.string :depthFunc
      t.string :format
      t.string :stencilFunc
      t.string :stencilFail
      t.string :stencilZFail
      t.string :stencilZPass
      t.string :side
      t.string :shadowSide
      t.jsonb :userData

      t.timestamps
    end
  end
end
