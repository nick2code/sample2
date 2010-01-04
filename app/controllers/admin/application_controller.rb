class Admin::ApplicationController < ApplicationController
  
  before_filter :require_admin_user
  
  private
  def require_admin_user
    require_user
    unless @current_user.is_a? Administrator
      flash[:notice] = "You must be Administrator to access this page."
      redirect_to root_path
      false
    end    
  end
end
