class DropFaunesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :faunes
  end
end
