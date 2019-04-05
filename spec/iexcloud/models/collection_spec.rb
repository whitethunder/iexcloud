require "spec_helper"

RSpec.describe IEXCloud::Models::Collection do
  let(:item_type) { IEXCloud::Models::HistoricalPrice }
  let(:response) {[
    {
      "date" => "2019-04-02",
      "open" => 197.33,
      "close" => 196.03,
      "high" => 202.21,
      "low" => 191.58,
      "volume" => 23276231,
      "uOpen" => 199.91,
      "uClose" => 196.74,
      "uHigh" => 195.1,
      "uLow" => 197.02,
      "uVolume" => 23336009,
      "change" => 2.84,
      "changePercent" => 1.4791,
      "label" => "Apr 2",
      "changeOverTime" => 0.104335
    },
    {
      "date" => "2019-04-03",
      "open" => 194.49,
      "close" => 198.14,
      "high" => 206.2,
      "low" => 198.62,
      "volume" => 23305827,
      "uOpen" => 195.11,
      "uClose" => 202.06,
      "uHigh" => 203.2,
      "uLow" => 199.71,
      "uVolume" => 23969902,
      "change" => 1.34,
      "changePercent" => 0.7145,
      "label" => "Apr 3",
      "changeOverTime" => 0.11318
    }
  ]}

  subject(:collection) { described_class.new(item_type, response) }

  it "coerces results to the specified type" do
    expect(collection.items).to all be_an item_type
  end

  it "instantiates the objects correctly" do
    expect(collection.first.date).to eq response.first["date"]
  end

  it "has the correct size" do
    expect(collection.size).to eq 2
  end
end
