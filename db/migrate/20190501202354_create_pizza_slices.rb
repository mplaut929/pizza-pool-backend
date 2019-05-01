class CreatePizzaSlices < ActiveRecord::Migration[5.2]
  def change
    create_table :pizza_slices do |t|
      t.integer :user_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
