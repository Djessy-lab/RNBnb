class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.text :description
      t.string :photo_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
