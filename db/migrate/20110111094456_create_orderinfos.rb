class CreateOrderinfos < ActiveRecord::Migration
  def self.up
    create_table :orderinfos do |t|
      t.references :customer
      t.datetime :dateplaced
      t.datetime :dateshipped
      t.float :shipping

      t.timestamps
    end
  end

  def self.down
    drop_table :orderinfos
  end
end
