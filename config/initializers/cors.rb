Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:5173', 'https://realtimechat-vue.vercel.app' # Vue.jsを動作させているアドレスとポート番号、および追加したいオリジン

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end