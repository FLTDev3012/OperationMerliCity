class CreateFaunes < ActiveRecord::Migration[7.0]
  def change
    create_table :faunes do |t|
      t.string :categorie
      t.string :nom
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
