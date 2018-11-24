class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :days
      t.date :end
      t.string :user
      t.text :notes

      t.timestamps
    end
  end
end
