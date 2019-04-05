require "spec_helper"

RSpec.describe IEXCloud::Models::KeyStats do
  let(:params) {{
    "marketcap" => 816450732000,
    "week52change" => 0.14326087546502658,
    "week52high" => 243.21,
    "week52low" => 143,
    "marketcap" => 947221518705,
    "employees" => 133537,
    "day200MovingAvg" => 199.48,
    "day50MovingAvg" => 183.99,
    "float" => 4938556462,
    "avg10Volume" => 33938836.1,
    "avg30Volume" => 29298672.7,
    "ttmEPS" => 12.83,
    "ttmDividendRate" => 2.83,
    "companyName" => "Apple, Inc.",
    "sharesOutstanding" => 4764529495,
    "maxChangePercent" => 197.646432,
    "year5ChangePercent" => 1.58223,
    "year2ChangePercent" => 0.358164,
    "year1ChangePercent" => 0.139911,
    "ytdChangePercent" => 0.244821,
    "month6ChangePercent" => -0.148607,
    "month3ChangePercent" => 0.323706,
    "month1ChangePercent" => 0.11348,
    "day30ChangePercent" => 0.145217,
    "day5ChangePercent" => 0.035999,
    "nextDividendRate" => nil,
    "dividendYield" => 0.014636740975907303,
    "nextEarningsDate" => "2019-05-10",
    "exDividendDate" => "2019-02-18",
    "peRatio" => 16.27
  }}

  subject { described_class.new(params) }

  its(:market_cap) { is_expected.to eq params["marketcap"] }
  its(:week_52_change) { is_expected.to eq params["week52change"] }
  its(:week_52_high) { is_expected.to eq params["week52high"] }
  its(:week_52_low) { is_expected.to eq params["week52low"] }
  its(:market_cap) { is_expected.to eq params["marketcap"] }
  its(:employees) { is_expected.to eq params["employees"] }
  its(:day_200_moving_avg) { is_expected.to eq params["day200MovingAvg"] }
  its(:day_50_moving_avg) { is_expected.to eq params["day50MovingAvg"] }
  its(:float) { is_expected.to eq params["float"] }
  its(:avg_10_volume) { is_expected.to eq params["avg10Volume"] }
  its(:avg_30_volume) { is_expected.to eq params["avg30Volume"] }
  its(:ttm_eps) { is_expected.to eq params["ttmEPS"] }
  its(:ttm_dividend_rate) { is_expected.to eq params["ttmDividendRate"] }
  its(:company_name) { is_expected.to eq params["companyName"] }
  its(:shares_outstanding) { is_expected.to eq params["sharesOutstanding"] }
  its(:max_change_percent) { is_expected.to eq params["maxChangePercent"] }
  its(:year_5_change_percent) { is_expected.to eq params["year5ChangePercent"] }
  its(:year_2_change_percent) { is_expected.to eq params["year2ChangePercent"] }
  its(:year_1_change_percent) { is_expected.to eq params["year1ChangePercent"] }
  its(:ytd_change_percent) { is_expected.to eq params["ytdChangePercent"] }
  its(:month_6_change_percent) { is_expected.to eq params["month6ChangePercent"] }
  its(:month_3_change_percent) { is_expected.to eq params["month3ChangePercent"] }
  its(:month_1_change_percent) { is_expected.to eq params["month1ChangePercent"] }
  its(:day_30_change_percent) { is_expected.to eq params["day30ChangePercent"] }
  its(:day_5_change_percent) { is_expected.to eq params["day5ChangePercent"] }
  its(:next_dividend_rate) { is_expected.to eq params["nextDividendRate"] }
  its(:dividend_yield) { is_expected.to eq params["dividendYield"] }
  its(:next_earnings_date) { is_expected.to eq params["nextEarningsDate"] }
  its(:ex_dividend_date) { is_expected.to eq params["exDividendDate"] }
  its(:pe_ratio) { is_expected.to eq params["peRatio"] }
end
