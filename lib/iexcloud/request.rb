module IEXCloud
  class Request
    attr_reader :path, :params

    def initialize(path, params={})
      @path = path
      @params = params
    end

    def build_path
      File.join(IEXCloud.config.api_version, path)
    end

    def call(method)
      response = client.public_send(method, build_path, params.merge(token: ENV["PUBLISHABLE_TOKEN"]))
      response.on_error(&:raise_errors)
    end

    [:get, :post].each do |method|
      define_method(method) do
        call(method)
      end
    end

    private

    def client
      IEXCloud.client
    end
  end
end
