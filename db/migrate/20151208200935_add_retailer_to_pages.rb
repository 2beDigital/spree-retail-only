class AddRetailerToPages < ActiveRecord::Migration
  def change
    add_column :spree_pages, :retailer, :boolean, default: false
  end
end
