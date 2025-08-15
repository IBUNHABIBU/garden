class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.string :meta_title
      t.string :meta_description

      t.timestamps
    end
  end
end
