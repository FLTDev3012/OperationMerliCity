class AddCertifToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :certif, :boolean, default: false
  end
end
