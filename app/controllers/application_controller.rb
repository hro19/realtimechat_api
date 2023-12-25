class ApplicationController < ActionController::API
  # 以下を追加
  def test
    render json: { message: 'これはrealtimechat_apiからのrails7経由のメッセです。' }
  end
end