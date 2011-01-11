class CreateOrderlists < ActiveRecord::Migration
  def self.up
    create_table :orderlists do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :position
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :orderlists
  end
end
