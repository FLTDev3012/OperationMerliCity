class CreateEspeces < ActiveRecord::Migration[7.0]
  def change
    create_table :especes do |t|
      t.string :nom
      t.string :description
      t.string :photo
      t.references :espece_categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
