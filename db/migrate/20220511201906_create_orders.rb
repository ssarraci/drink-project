class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :drink_id
      t.integer :bartender_id
      t.integer :rating
      t.text :comment
      t.float :cost

      t.timestamps
    end
  end
end
