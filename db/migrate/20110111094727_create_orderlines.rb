class CreateOrderlines < ActiveRecord::Migration
  def self.up
    create_table :orderlines, :id => false, :primary_key => [:orderinfo, :product] do |t|
      t.references :orderinfo
      t.references :product
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :orderlines
  end
end
