class CreateHeroSections < ActiveRecord::Migration[8.0]
  def change
    create_table :hero_sections do |t|
      t.string :title
      t.text :subtitle

      t.timestamps
    end
  end
end
