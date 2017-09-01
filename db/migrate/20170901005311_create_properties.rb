class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.references :promoter, foreign_key: true
      t.references :city, foreign_key: true
      t.references :feature, foreign_key: true
      t.boolean :rent_sale
      t.text :title
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.float :area
      t.string :location
      t.string :address
      t.text :description
      t.string :property_type

      t.timestamps
    end
  end
end
