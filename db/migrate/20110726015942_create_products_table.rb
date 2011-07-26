class CreateProductsTable < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name, :limit => 128, :null => false
      t.string :category, :limit => 32, :null => false
      t.integer :on_hand, :default => 0
      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
