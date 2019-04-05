require "spec_helper"

RSpec.describe IEXCloud::Models::HistoricalPrice do
  let(:params) {{
    "date" => "2019-03-04",
    "open" => 175.95,
    "close" => 180.73,
    "high" => 181.06,
    "low" => 177.22,
    "volume" => 28553424,
    "uOpen" => 176.82,
    "uClose" => 183.21,
    "uHigh" => 184.49,
    "uLow" => 179.97,
    "uVolume" => 28666237,
    "change" => 0,
    "changePercent" => 0,
    "label" => "Mar 4",
    "changeOverTime" => 0
  }}

  subject(:quote) { described_class.new(params) }

  its(:date) { is_expected.to eq params["date"]}
  its(:open) { is_expected.to eq params["open"]}
  its(:close) { is_expected.to eq params["close"]}
  its(:high) { is_expected.to eq params["high"]}
  its(:low) { is_expected.to eq params["low"]}
  its(:volume) { is_expected.to eq params["volume"]}
  its(:unadjusted_open) { is_expected.to eq params["uOpen"]}
  its(:unadjusted_close) { is_expected.to eq params["uClose"]}
  its(:unadjusted_high) { is_expected.to eq params["uHigh"]}
  its(:unadjusted_low) { is_expected.to eq params["uLow"]}
  its(:unadjusted_volume) { is_expected.to eq params["uVolume"]}
  its(:change) { is_expected.to eq params["change"]}
  its(:change_percent) { is_expected.to eq params["changePercent"]}
  its(:label) { is_expected.to eq params["label"]}
  its(:change_over_time) { is_expected.to eq params["changeOverTime"]}
end
