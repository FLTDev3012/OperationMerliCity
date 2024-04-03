class CreateGaleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galeries do |t|
      t.string :title

      t.timestamps
    end
  end
end
