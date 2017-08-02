class ApplicationController < ActionController::Base

  include ApplicationHelper
  protect_from_forgery with: :exception
  def  autenticate_user
    if session[:id].blank?
      redirect_to root_path
    end
  end
end
