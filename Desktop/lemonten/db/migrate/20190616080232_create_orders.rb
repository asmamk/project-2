class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :quntity
      t.integer :table_number

      t.timestamps
    end
  end
end
