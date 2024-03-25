class AddAddressLatitudeAndLongitudeToLogements < ActiveRecord::Migration[7.0]
  def change
    add_column :logements, :address, :string
    add_column :logements, :latitude, :float
    add_column :logements, :longitude, :float
  end
end
