class CreateLogements < ActiveRecord::Migration[7.0]
  def change
    create_table :logements do |t|
      t.string :categorie
      t.string :title
      t.text :description
      t.integer :price
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
