class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets, id: :uuid  do |t|
      t.uuid :project_id
      t.string :file_path

      t.timestamps
    end
  end
end
