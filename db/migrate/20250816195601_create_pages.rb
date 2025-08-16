class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages do |t|
      t.string :hero_title
      t.text :hero_subtitle
      t.string :about_title
      t.text :about_content
      t.text :contact_address
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
