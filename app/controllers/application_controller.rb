class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :sitter?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sitter?
    current_user.class == Sitter
  end
end
