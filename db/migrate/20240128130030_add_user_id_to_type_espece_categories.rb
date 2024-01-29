class AddUserIdToTypeEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :type_espece_categories, :user, null: false, foreign_key: true
  end
end
