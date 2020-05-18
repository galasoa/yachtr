class CreateYachts < ActiveRecord::Migration[6.0]
  def change
    create_table :yachts do |t|
      t.string :location
      t.string :name
      t.integer :capacity
      t.boolean :crew
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
