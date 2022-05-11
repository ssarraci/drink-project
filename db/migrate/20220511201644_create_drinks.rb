class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :ingredients
      t.boolean :alcoholic

      t.timestamps
    end
  end
end
