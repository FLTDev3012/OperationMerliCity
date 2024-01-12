class CreateActivites < ActiveRecord::Migration[7.0]
  def change
    create_table :activites do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
