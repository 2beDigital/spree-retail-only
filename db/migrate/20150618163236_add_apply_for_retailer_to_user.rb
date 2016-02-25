class AddApplyForRetailerToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :applyforretailer, :boolean, :default => false
  end
end
