class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name
    add_column :users, :last_name
  end
end
