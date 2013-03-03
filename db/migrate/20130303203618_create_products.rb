class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :price
      t.integer :qty
      t.string :blurb
      t.string :description
      t.string :weight
      t.string :shipping_weight
      t.string :category
      t.string :subcategory
      t.string :images
      t.string :size
      t.string :options

      t.timestamps
    end
  end
end
