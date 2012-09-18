class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :measurement
      t.float :unit_price
      t.string :remark

      t.timestamps
    end
    
  end
end
