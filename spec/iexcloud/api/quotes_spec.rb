require "spec_helper"

RSpec.describe IEXCloud::Api::Quotes do
  subject(:quotes) { described_class }

  describe ".find", vcr: { cassette_name: "quotes/find", allow_playback_repeats: true, match_requests_on: [:method, :uri, :body] } do
    let(:symbol) { "aapl" }

    it "creates a GET request for '/stock/:symbol/quote'" do
      expect(IEXCloud::Request).to receive(:new).
        with("/stock/#{symbol}/quote").and_call_original

      quotes.find(symbol)
    end

    it "returns a Quote" do
      expect(quotes.find(symbol)).to be_a IEXCloud::Models::Quote
    end

    it "correctly sets the Quote's attributes" do
      quote = quotes.find(symbol)
      expect(quote.latest_price).to eq 173.15
    end
  end
end
