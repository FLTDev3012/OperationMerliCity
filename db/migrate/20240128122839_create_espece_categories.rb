class CreateEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :espece_categories do |t|
      t.string :categorie
      t.string :photo
      t.references :type_espece_categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
