class AddSaveNameColumnToScenes < ActiveRecord::Migration[6.0]
  def change
    add_column :scenes, :save_name, :string 
  end
end
