class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.integer :user_id
      t.string :file_path

      t.timestamps
    end
  end
end
