require "spec_helper"

RSpec.describe IEXCloud::Api::KeyStats do
  subject(:key_stats) { described_class }

  describe ".find", vcr: { cassette_name: "key_stats/find", match_requests_on: [:method, :uri, :body] } do
    let(:symbol) { "aapl" }

    context "when no specific stat is given" do
      it "creates a GET request for '/stock/:symbol/stats'" do
        expect(IEXCloud::Request).to receive(:new).
          with("/stock/#{symbol}/stats/").and_call_original

        key_stats.find(symbol)
      end

      it "returns a KeyStats instance" do
        expect(key_stats.find(symbol)).to be_a IEXCloud::Models::KeyStats
      end

      it "sets the KeyStat's attributes" do
        stats = key_stats.find(symbol)
        expect(stats.company_name).to eq "Apple, Inc."
      end
    end

    context "when a specific stat is given" do
      let(:stat) { "nextEarningsDate" }

      it "creates a GET request for '/stock/:symbol/stats'" do
        expect(IEXCloud::Request).to receive(:new).
          with("/stock/#{symbol}/stats/#{stat}").and_call_original

        key_stats.find(symbol, stat)
      end

      it "returns a KeyStats instance" do
        expect(key_stats.find(symbol, stat)).to be_a IEXCloud::Models::KeyStats
      end

      it "sets the KeyStats's attributes" do
        stats = key_stats.find(symbol, stat)
        expect(stats.next_earnings_date).to eq "2019-05-05"
      end
    end
  end
end
