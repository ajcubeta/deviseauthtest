class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter :create_rfm_object
  
  def create_rfm_object
    @server_object ||= Rfm::Server.new(CONFIG)
  end
end
