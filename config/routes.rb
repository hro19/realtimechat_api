Rails.application.routes.draw do
  get '/api/test', to: 'application#test' # ここを追加
end