class CreateBiotops < ActiveRecord::Migration[7.0]
  def change
    create_table :biotops do |t|
      t.string :categorie

      t.timestamps
    end
  end
end
