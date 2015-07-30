class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :condition
      t.integer :price
      t.boolean :offer_shipping
      t.string :shipping_size
      t.boolean :offer_local_pickup

      t.timestamps null: false
    end
  end
end
