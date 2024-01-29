class RemovePhotoFromEspeces < ActiveRecord::Migration[7.0]
  def change
    remove_column :especes, :photo, :string
  end
end
