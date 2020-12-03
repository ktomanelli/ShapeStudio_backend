class AddShowNoticeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :show_notice, :boolean
  end
end
