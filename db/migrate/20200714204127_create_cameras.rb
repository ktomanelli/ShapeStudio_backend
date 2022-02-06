class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.uuid :threeobject_id
      t.string :camera_string

      t.timestamps
    end
  end
end
