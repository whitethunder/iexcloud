require "spec_helper"

RSpec.describe IEXCloud::Api::HistoricalPrices do
  subject(:historical_prices) { described_class }

  describe ".find", vcr: { cassette_name: "historical_prices/find", match_requests_on: [:method, :uri, :body] } do
    let(:symbol) { "aapl" }

    context "when no parameters are specified" do
      it "creates a GET request for '/stock/:symbol/chart'" do
        expect(IEXCloud::Request).to receive(:new).
          with("/stock/#{symbol}/chart", {}).and_call_original

        historical_prices.find(symbol)
      end

      it "returns a collection of HistoricalPrices" do
        expect(historical_prices.find(symbol)).to all be_an IEXCloud::Models::HistoricalPrice
      end

      it "returns a 1m collection" do
        expect(historical_prices.find(symbol).size).to eq 23
      end

      it "correctly sets the HistoricalPrice's attributes" do
        prices = historical_prices.find(symbol)
        expect(prices.first.date).to eq "2019-03-04"
      end
    end

    context "when a range is specified" do
      let(:range) { "ytd" }

      it "creates a GET request for '/stock/:symbol/chart/{range}'" do
        expect(IEXCloud::Request).to receive(:new).
          with("/stock/#{symbol}/chart/#{range}", {}).and_call_original

        historical_prices.find(symbol, range: range)
      end

      it "returns a YTD collection" do
        expect(historical_prices.find(symbol, range: range).first.date).to eq "2019-01-02"
      end
    end

    context "when a date is specified" do
      let(:date) { "20190220" }

      it "creates a GET request for '/stock/:symbol/chart/date/{date}'" do
        expect(IEXCloud::Request).to receive(:new).
          with("/stock/#{symbol}/chart/date/#{date}", {}).and_call_original

        historical_prices.find(symbol, date: date)
      end

      it "returns a single date" do
        expect(historical_prices.find(symbol, date: date).first.date).to eq date
      end

      context "and additional options are specified" do
        let(:options) {{ chartByDay: true }}

        it "returns a single date" do
          expect(historical_prices.find(symbol, date: date, options: options).first.date).to eq "2019-02-20"
        end
      end
    end
  end
end
