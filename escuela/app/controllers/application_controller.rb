class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def home
    render html: "this is the homepage"
  end
end