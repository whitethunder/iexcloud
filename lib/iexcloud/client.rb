require "faraday"
require "faraday_middleware"

module IEXCloud
  class Client
    def connection
      @connection ||= Faraday.new(url: IEXCloud.config.endpoint, proxy: IEXCloud.config.proxy) do |conn|
        conn.request :json
        conn.response :json, :content_type => "application/json"
        conn.adapter Faraday.default_adapter
      end
    end

    def call(method, path, params={}, &block)
      raw_response = connection.public_send(method, path, params, &block)
      Response.new(raw_response)
    end

    [:get, :post].each do |method|
      define_method(method) do |path, params={}, &block|
        call(method, path, params, &block)
      end
    end
  end
end
