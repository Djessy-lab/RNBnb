class RemoveColumnFromModels < ActiveRecord::Migration[7.0]
  def change
    remove_column :artists, :photo_url
    remove_column :users, :avatar_url
  end
end
