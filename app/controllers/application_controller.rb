class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
 	
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "login"
    else
      "application"
    end
  end

  def after_sign_out_path_for(resource_or_scope)
 		'/users/sign_in'
	end
end 