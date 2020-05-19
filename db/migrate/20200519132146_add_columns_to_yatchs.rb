class AddColumnsToYatchs < ActiveRecord::Migration[6.0]
  def change
    add_column :yachts, :model, :string
    add_column :yachts, :length, :string
  end
end
