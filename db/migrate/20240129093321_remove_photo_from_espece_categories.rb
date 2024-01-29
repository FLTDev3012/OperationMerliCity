class RemovePhotoFromEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :espece_categories, :photo, :string
  end
end
