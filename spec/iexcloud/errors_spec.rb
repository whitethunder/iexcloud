require "spec_helper"

RSpec.describe IEXCloud::InvalidRequest do
  let(:response_body) { "Error response" }

  subject(:error) { described_class.new(response_body) }

  its(:message) { is_expected.to eq response_body }
end
