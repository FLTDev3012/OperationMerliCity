class AddUserIdToEspeceCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :espece_categories, :user, null: false, foreign_key: true
  end
end
