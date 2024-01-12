class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def test
    render json: { message: 'これはrealtimechat_apiからのrails7経由のメッセです。' }
  end

  before_action :authenticate

  protected
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      token == 'FOO'
    end
  end
  
end