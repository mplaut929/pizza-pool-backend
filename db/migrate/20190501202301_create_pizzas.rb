class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.integer :price
      t.boolean :vegan

      t.timestamps
    end
  end
end
