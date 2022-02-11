class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects, id: :uuid  do |t|
      t.uuid :user_id
      t.string :name
      t.jsonb :file_schema
      
      t.timestamps
    end
  end
end
