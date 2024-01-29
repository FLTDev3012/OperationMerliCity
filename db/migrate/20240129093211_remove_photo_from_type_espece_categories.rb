class RemovePhotoFromTypeEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :type_espece_categories, :photo, :string
  end
end
