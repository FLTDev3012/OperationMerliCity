class AddCertifToEspeces < ActiveRecord::Migration[7.0]
  def change
    add_column :especes, :certif, :boolean, default: false
  end
end
