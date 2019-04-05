require "spec_helper"

RSpec.describe IEXCloud::Models::HistoricalPriceTick do
  let(:params) {{
    "date" => "20190220",
    "minute" => "15:59",
    "label" => "3:59 PM",
    "high" => 172.06,
    "low" => 171.81,
    "average" => 171.91,
    "volume" => 2796,
    "notional" => 480661.18,
    "numberOfTrades" => 28,
    "marketHigh" => 172.09,
    "marketLow" => 171.81,
    "marketAverage" => 171.922,
    "marketVolume" => 217516,
    "marketNotional" => 37395779.732,
    "marketNumberOfTrades" => 1831,
    "open" => 171.81,
    "close" => 172.03,
    "marketOpen" => 171.82,
    "marketClose" => 172.03,
    "changeOverTime" => 0.004270383633506415,
    "marketChangeOverTime" => 0.004493055920725932
  }}

  subject(:quote) { described_class.new(params) }

  its(:date) { is_expected.to eq params["date"]}
  its(:minute) { is_expected.to eq params["minute"]}
  its(:label) { is_expected.to eq params["label"]}
  its(:high) { is_expected.to eq params["high"]}
  its(:low) { is_expected.to eq params["low"]}
  its(:average) { is_expected.to eq params["average"]}
  its(:volume) { is_expected.to eq params["volume"]}
  its(:notional) { is_expected.to eq params["notional"]}
  its(:number_of_trades) { is_expected.to eq params["numberOfTrades"]}
  its(:market_high) { is_expected.to eq params["marketHigh"]}
  its(:market_low) { is_expected.to eq params["marketLow"]}
  its(:market_average) { is_expected.to eq params["marketAverage"]}
  its(:market_volume) { is_expected.to eq params["marketVolume"]}
  its(:market_notional) { is_expected.to eq params["marketNotional"]}
  its(:market_number_of_trades) { is_expected.to eq params["marketNumberOfTrades"]}
  its(:open) { is_expected.to eq params["open"]}
  its(:close) { is_expected.to eq params["close"]}
  its(:market_open) { is_expected.to eq params["marketOpen"]}
  its(:market_close) { is_expected.to eq params["marketClose"]}
  its(:change_over_time) { is_expected.to eq params["changeOverTime"]}
  its(:market_change_over_time) { is_expected.to eq params["marketChangeOverTime"]}
end
