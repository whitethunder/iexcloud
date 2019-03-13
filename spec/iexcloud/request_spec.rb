require "spec_helper"

RSpec.describe IEXCloud::Request do
  let(:path) { "stock/aapl/quote" }
  let(:params) {{ displayPercent: 1 }}

  subject(:request) { described_class.new(path, params) }

  describe "#initialize" do
    it "assigns the path" do
      expect(request.path).to eq path
    end

    it "assigns the params" do
      expect(request.params).to eq params
    end
  end

  describe "#call" do
    let(:method) { :get }
    let(:raw_response) { double(status: 200, body: "OK") }
    let(:response) { IEXCloud::Response.new(raw_response) }

    before { allow(IEXCloud.client).to receive(method).and_return(response) }

    it "requests the path from the client" do
      expect(IEXCloud.client).to receive(method).with(/#{request.path}/, instance_of(Hash))
      request.call(method)
    end

    it "checks the response for errors" do
      expect(response).to receive(:on_error)
      request.call(method)
    end
  end

  describe "#get" do
    it "performs a GET call on the client" do
      expect(request).to receive(:call).with(:get)
      request.get
    end
  end

  describe "#post" do
    it "performs a POST call on the client" do
      expect(request).to receive(:call).with(:post)
      request.post
    end
  end
end
