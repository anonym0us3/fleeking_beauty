class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include GraphHelper
  include SearchHelper
  include UsersHelper
  include PlacesHelper
  # This allows jQuery to interact with the controllers
  respond_to :js, :html
 
end
