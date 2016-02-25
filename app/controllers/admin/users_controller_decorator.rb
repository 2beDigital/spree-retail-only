module Spree
  module Admin
    Spree::Admin::UsersController.class_eval do

      def update
        if params[:user]
          roles = params[:user].delete("spree_role_ids")
        end

        if @user.update_attributes(user_params)
          if roles
            @user.spree_roles = roles.reject(&:blank?).collect{|r| Spree::Role.find(r)}
            @user.applyforretailer =  (@user.has_spree_role? :retail) ? true : false
            @user.save
          end
          flash.now[:success] = Spree.t(:account_updated)
        end

        render :edit
      end

    end
  end
end
