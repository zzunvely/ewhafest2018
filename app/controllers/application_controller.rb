class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 # protect_from_forgery with: :exception
 around_action :set_time_zone

  def set_time_zone
    Time.use_zone("Seoul") { yield }
  end
end
