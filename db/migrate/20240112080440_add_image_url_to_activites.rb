class AddImageUrlToActivites < ActiveRecord::Migration[7.0]
  def change
    add_column :activites, :image_url, :string
  end
end
