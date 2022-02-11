class CreateThreeObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :three_objects, id: :uuid do |t|
      t.uuid :project_id
      t.string :object_type 
      t.string :name 
      t.references :parent, foreign_key: {to_table: :three_objects}, type: :uuid
      t.boolean :matrixAutoUpdate 
      t.boolean :visible 
      t.boolean :castShadow 
      t.boolean :receiveShadow 
      t.boolean :frustumCulled 
      t.boolean :matrixWorldNeedsUpdate 
      t.integer :renderOrder 
      t.jsonb :up 
      t.jsonb :position 
      t.jsonb :rotation 
      t.jsonb :quaternion 
      t.jsonb :scale 
      t.jsonb :modelViewMatrix 
      t.jsonb :normalMatrix 
      t.jsonb :matrix 
      t.jsonb :matrixWorld 
      t.jsonb :layers 
      t.jsonb :userData 
      t.jsonb :animations 
      t.uuid :customDepthMaterial_id
      t.uuid :customDistanceMaterial_id

      t.timestamps
    end
  end
end
