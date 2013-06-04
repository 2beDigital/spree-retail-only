Spree::ProductsController.class_eval do
  alias_method :orig_load_product,  :load_product unless method_defined? :orig_load_product
  def load_product
  	orig_load_product
  	return if spree_current_user and spree_current_user.has_spree_role? :admin
  	if can? :see_retail_only_products, Spree::Product
      # retail users can see retail_only products
      @product = Spree::Product.active(current_currency).where(:retail_only => true).find_by_permalink!(params[:id])
  	else
      # all other users only see products that are NOT retail_only
      @product = Spree::Product.active(current_currency).where(:retail_only => false).find_by_permalink!(params[:id])
  	end
  end
end