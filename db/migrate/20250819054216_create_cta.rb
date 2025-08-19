class CreateCta < ActiveRecord::Migration[8.0]
  def change
    create_table :cta do |t|
      t.string :title
      t.string :subtitle
      t.string :button_text
      t.string :button_url
      t.string :background_color

      t.timestamps
    end
  end
end
