class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.integer :scene_id
      t.string :camera_string

      t.timestamps
    end
  end
end
