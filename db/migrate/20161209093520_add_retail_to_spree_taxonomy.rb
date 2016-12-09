class AddRetailToSpreeTaxonomy < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :retailer, :boolean, default: false
  end
end
