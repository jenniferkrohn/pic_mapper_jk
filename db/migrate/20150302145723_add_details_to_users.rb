class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :following, :text
    add_column :users, :user_handle, :string
  end
end
