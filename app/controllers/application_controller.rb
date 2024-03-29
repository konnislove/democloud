# frozen_string_literal: true

# general controller for the application sets up devise properly
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit::Authorization

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end
end
