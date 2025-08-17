class CreateTourRoutes < ActiveRecord::Migration[8.0]
  def change
    create_table :tour_routes do |t|
      t.string :name
      t.integer :days
      t.decimal :price
      t.string :difficulty
      t.text :short_description

      t.timestamps
    end
  end
end
