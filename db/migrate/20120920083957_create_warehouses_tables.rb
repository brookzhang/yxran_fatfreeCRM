class CreateWarehousesTables < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :remark
      t.integer :status

      t.timestamps
    end
    
    create_table :inventories do |t|
      t.integer :warehouse_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps
    end
    
    create_table :histories do |t|
      t.integer :inventory_id
      t.integer :adjusted_by
      t.integer :adjusted_to
      t.string :adjusted_type
      t.string :remark

      t.timestamps
    end
    
    add_index :inventories ,:warehouse_id
    add_index :inventories ,:product_id
    add_index :inventories ,[:warehouse_id,:product_id]
    add_index :histories ,:inventory_id
    
  end
end
