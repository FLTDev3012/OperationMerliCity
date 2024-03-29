class AddCertifToEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :espece_categories, :certif, :boolean, default: false
  end
end
