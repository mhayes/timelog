class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "csc191" && password == "csus2010"
    end
  end
end
