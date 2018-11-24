class AddNascToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nasc, :date
  end
end
