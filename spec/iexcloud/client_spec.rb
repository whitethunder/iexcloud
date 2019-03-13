require "spec_helper"

RSpec.describe IEXCloud::Client do
  let(:config) { IEXCloud.config }

  subject(:client) { described_class.new }

  describe "#connection" do
    subject(:connection) { client.connection }

    it { is_expected.to be_a Faraday::Connection }

    it "sets the connection endpoint" do
      expect(connection.url_prefix.to_s).to eq config.endpoint
    end
  end

  describe "#call" do
    let(:method) { :get }
    let(:uri) { "http://example.com" }
    let(:params) {{ foo: "bar" }}
    let(:response) { double(status: 200, body: "OK") }

    before { allow(client.connection).to receive(method).with(uri, params).and_return(response) }

    subject(:request_uri) { client.get(uri, params) }

    it { is_expected.to be_a IEXCloud::Response }

    it "creates a Faraday request for the supplied method" do
      expect(client.connection).to receive(method).with(uri, params).and_return(response)
      request_uri
    end
  end

  describe "#get" do
    let(:path) { "/foo/bar" }
    let(:params) {{ foo: "bar" }}

    it "performs a GET call on the client" do
      expect(client).to receive(:call).with(:get, path, params)
      client.get(path, params)
    end
  end

  describe "#post" do
    let(:path) { "/foo/bar" }
    let(:params) {{ foo: "bar" }}

    it "performs a POST call on the client" do
      expect(client).to receive(:call).with(:post, path, params)
      client.post(path, params)
    end
  end
end
