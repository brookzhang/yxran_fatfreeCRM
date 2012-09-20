class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :remark
      t.integer :status

      t.timestamps
    end
    
    create_table :stock_products do |t|
      t.integer :stock_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
    
    create_table :stock_product_histories do |t|
      t.integer :stock_product_id
      t.integer :adjusted_by
      t.integer :adjuested_to
      t.string :adjust_type
      t.string :remark

      t.timestamps
    end
    
    add_index :stock_products , :stock_id
    add_index :stock_products , :product_id
    add_index :stock_products , [:stock_id,:product_id]
    add_index :stock_product_histories , :stock_product_id
  end
end
