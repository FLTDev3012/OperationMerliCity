class AddImageUrlToLogements < ActiveRecord::Migration[7.0]
  def change
    add_column :logements, :image_url, :string
  end
end
