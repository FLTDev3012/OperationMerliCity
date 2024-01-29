class CreateTypeEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :type_espece_categories do |t|
      t.string :categorie
      t.string :photo
      t.references :biotop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
