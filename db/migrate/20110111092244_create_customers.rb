class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :town
      t.string :street
      t.integer :streetnumber
      t.integer :housenumber
      t.string :zipcode
      t.string :phone
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
