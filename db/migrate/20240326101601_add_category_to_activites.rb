class AddCategoryToActivites < ActiveRecord::Migration[7.0]
  def change
    add_column :activites, :categorie, :string
  end
end
