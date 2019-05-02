class AddSlicesToPizzaSlices < ActiveRecord::Migration[5.2]
  def change
    add_column :pizza_slices, :slices, :integer, :default => 1
  end
end
