class AddCategoryTable < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
 
      t.timestamps null: false
    end

    create_table :categories_posts do |t|
      t.integer :post_id
      t.integer :category_id
 
      t.timestamps null: false
    end
  end
end
