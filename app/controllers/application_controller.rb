class ApplicationController < ActionController::API

  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods
  
  before_action :restrict_access
  
  private
    def restrict_access
      authenticate_or_request_with_http_token do |token, options|
        token == ENV['API_KEY']
      end
    end
  end
  