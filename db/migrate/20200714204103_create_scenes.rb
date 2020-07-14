class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.integer :user_id
      t.string :scene_string

      t.timestamps
    end
  end
end
