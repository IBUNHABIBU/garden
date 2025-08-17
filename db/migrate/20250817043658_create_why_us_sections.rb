class CreateWhyUsSections < ActiveRecord::Migration[8.0]
  def change
    create_table :why_us_sections do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
