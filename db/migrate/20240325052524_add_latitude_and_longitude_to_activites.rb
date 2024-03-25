class AddLatitudeAndLongitudeToActivites < ActiveRecord::Migration[7.0]
  def change
    add_column :activites, :latitude, :float
    add_column :activites, :longitude, :float
  end
end
