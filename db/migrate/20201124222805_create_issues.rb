class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.integer :user_id
      t.integer :issue_id
      
      t.timestamps
    end
  end
end
