class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :minprice
      t.integer :maxprice
      t.string :category

      t.timestamps null: false
    end
  end
end
 