class CreateOldpics < ActiveRecord::Migration[7.0]
  def change
    create_table :oldpics do |t|
      t.string :title

      t.timestamps
    end
  end
end
