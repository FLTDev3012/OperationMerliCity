class AddUserIdToBiotops < ActiveRecord::Migration[7.0]
  def change
    add_reference :biotops, :user, null: false, foreign_key: true
  end
end
