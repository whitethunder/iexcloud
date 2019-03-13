require "spec_helper"

RSpec.describe IEXCloud::Models::Quote do
  let(:params) {{
    "symbol" => "AAPL",
    "companyName" => "Apple Inc.",
    "calculationPrice" => "close",
    "open" => 174.32,
    "openTime" => 1551364200315,
    "close" => 173.15,
    "closeTime" => 1551387600237,
    "high" => 175,
    "low" => 172.63,
    "latestPrice" => 173.15,
    "latestSource" => "Close",
    "latestTime" => "February 28, 2019",
    "latestUpdate" => 1551387600237,
    "latestVolume" => 28451647,
    "iexRealtimePrice" => 173.1,
    "iexRealtimeSize" => 111,
    "iexLastUpdated" => 1551387599508,
    "delayedPrice" => 173.26,
    "delayedPriceTime" => 1551388500010,
    "extendedPrice" => 174.75,
    "extendedChange" => 1.6,
    "extendedChangePercent" => 0.00924,
    "extendedPriceTime" => 1551401990494,
    "previousClose" => 174.87,
    "change" => -1.72,
    "changePercent"=>-0.00984,
    "iexMarketPercent" => 0.017209056473953863,
    "iexVolume" => 489626,
    "avgTotalVolume" => 28310674,
    "iexBidPrice" => 0,
    "iexBidSize" => 0,
    "iexAskPrice" => 0,
    "iexAskSize" => 0,
    "marketCap" => 816450732000,
    "peRatio" => 14.11,
    "week52High" => 233.47,
    "week52Low" => 142,
    "ytdChange" => 0.097493
  }}

  subject(:quote) { described_class.new(params) }

  its(:symbol) { is_expected.to eq params["symbol"] }
  its(:company_name) { is_expected.to eq params["companyName"] }
  its(:calculation_price) { is_expected.to eq params["calculationPrice"] }
  its(:open) { is_expected.to eq params["open"] }
  its(:open_time) { is_expected.to eq params["openTime"] }
  its(:close) { is_expected.to eq params["close"] }
  its(:close_time) { is_expected.to eq params["closeTime"] }
  its(:high) { is_expected.to eq params["high"] }
  its(:low) { is_expected.to eq params["low"] }
  its(:latest_price) { is_expected.to eq params["latestPrice"] }
  its(:latest_source) { is_expected.to eq params["latestSource"] }
  its(:latest_time) { is_expected.to eq params["latestTime"] }
  its(:latest_update) { is_expected.to eq params["latestUpdate"] }
  its(:latest_volume) { is_expected.to eq params["latestVolume"] }
  its(:iex_realtime_price) { is_expected.to eq params["iexRealtimePrice"] }
  its(:iex_realtime_size) { is_expected.to eq params["iexRealtimeSize"] }
  its(:iex_last_updated) { is_expected.to eq params["iexLastUpdated"] }
  its(:delayed_price) { is_expected.to eq params["delayedPrice"] }
  its(:delayed_price_time) { is_expected.to eq params["delayedPriceTime"] }
  its(:extended_price) { is_expected.to eq params["extendedPrice"] }
  its(:extended_change) { is_expected.to eq params["extendedChange"] }
  its(:extended_change_percent) { is_expected.to eq params["extendedChangePercent"] }
  its(:extended_price_time) { is_expected.to eq params["extendedPriceTime"] }
  its(:previous_close) { is_expected.to eq params["previousClose"] }
  its(:change) { is_expected.to eq params["change"] }
  its(:change_percent) { is_expected.to eq params["changePercent"] }
  its(:iex_market_percent) { is_expected.to eq params["iexMarketPercent"] }
  its(:iex_volume) { is_expected.to eq params["iexVolume"] }
  its(:avg_total_volume) { is_expected.to eq params["avgTotalVolume"] }
  its(:iex_bid_price) { is_expected.to eq params["iexBidPrice"] }
  its(:iex_bid_size) { is_expected.to eq params["iexBidSize"] }
  its(:iex_ask_price) { is_expected.to eq params["iexAskPrice"] }
  its(:iex_ask_size) { is_expected.to eq params["iexAskSize"] }
  its(:market_cap) { is_expected.to eq params["marketCap"] }
  its(:pe_ratio) { is_expected.to eq params["peRatio"] }
  its(:week52_high) { is_expected.to eq params["week52High"] }
  its(:week52_low) { is_expected.to eq params["week52Low"] }
  its(:ytd_change) { is_expected.to eq params["ytdChange"] }
end
