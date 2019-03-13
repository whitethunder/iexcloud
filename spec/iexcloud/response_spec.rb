require "spec_helper"

RSpec.describe IEXCloud::Response do
  let(:raw_response) { double(status: 200, body: "OK") }

  subject(:response) { described_class.new(raw_response) }

  describe "#initialize" do
    it "assigns the raw_response" do
      expect(response.raw_response).to eq raw_response
    end
  end

  describe "#status" do
    it "delegates to the raw response" do
      expect(response.status).to eq raw_response.status
    end
  end

  describe "#body" do
    it "delegates to the raw response" do
      expect(response.body).to eq raw_response.body
    end
  end

  describe "#success?" do
    subject { response.success? }

    context "when the status is 200" do
      it { is_expected.to be true }
    end

    context "when the status is anything else" do
      let(:raw_response) { double(status: 401) }
      it { is_expected.to be false }
    end
  end

  describe "#on_error" do
    subject(:on_error) { response.on_error }

    it { is_expected.to eq response }

    context "when request is a success" do
      it "does nothing" do
        expect { |b| response.on_error(&b) }.not_to yield_control
      end
    end

    context "when request has an error" do
      it "yields to the associated block" do
        allow(response).to receive(:success?).and_return(false)
        expect { |b| response.on_error(&b) }.to yield_control
      end
    end
  end

  describe "#raise_errors" do
    subject { response.raise_errors }

    let(:raw_response) { double(status: status, body: { "exception" => { "message" => "Error message" } }) }

    context "when the status is 400" do
      let(:status) { 400 }

      it "raises an InvalidRequest error" do
        expect { subject }.to raise_error(IEXCloud::InvalidRequest)
      end
    end

    context "when the status is 401" do
      let(:status) { 401 }
      it "raises an AccessDenied error" do
        expect { subject }.to raise_error(IEXCloud::AccessDenied)
      end
    end

    context "when the status is 403" do
      let(:status) { 403 }
      it "raises an InvalidAuth error" do
        expect { subject }.to raise_error(IEXCloud::InvalidAuth)
      end
    end

    context "when the status is 404" do
      let(:status) { 404 }
      it "raises a ResourceNotFound error" do
        expect { subject }.to raise_error(IEXCloud::ResourceNotFound)
      end
    end

    context "when the status is 405" do
      let(:status) { 405 }
      it "raises a MethodNotAllowed error" do
        expect { subject }.to raise_error(IEXCloud::MethodNotAllowed)
      end
    end

    context "when the status is 400 through 499" do
      let(:status) { 402 }
      it "raises a ServiceError" do
        expect { subject }.to raise_error(IEXCloud::ServiceError)
      end
    end

    context "when the status is 500 through 599" do
      let(:status) { 555 }
      it "raises a ServerError" do
        expect { subject }.to raise_error(IEXCloud::ServerError)
      end
    end
  end
end
