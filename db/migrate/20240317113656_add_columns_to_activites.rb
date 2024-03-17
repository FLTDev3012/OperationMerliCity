class AddColumnsToActivites < ActiveRecord::Migration[7.0]
  def change
    add_column :activites, :address, :string
    add_column :activites, :phone, :string
    add_column :activites, :price_a, :string
    add_column :activites, :price_b, :string
    add_column :activites, :luns, :string
    add_column :activites, :lunbs, :string
    add_column :activites, :lunbe, :string
    add_column :activites, :lune, :string
    add_column :activites, :mars, :string
    add_column :activites, :marbs, :string
    add_column :activites, :marbe, :string
    add_column :activites, :mare, :string
    add_column :activites, :mers, :string
    add_column :activites, :merbs, :string
    add_column :activites, :merbe, :string
    add_column :activites, :mere, :string
    add_column :activites, :jeus, :string
    add_column :activites, :jeubs, :string
    add_column :activites, :jeube, :string
    add_column :activites, :jeue, :string
    add_column :activites, :vens, :string
    add_column :activites, :venbs, :string
    add_column :activites, :venbe, :string
    add_column :activites, :vene, :string
    add_column :activites, :sams, :string
    add_column :activites, :sambs, :string
    add_column :activites, :sambe, :string
    add_column :activites, :same, :string
    add_column :activites, :dims, :string
    add_column :activites, :dimbs, :string
    add_column :activites, :dimbe, :string
    add_column :activites, :dime, :string
  end
end
