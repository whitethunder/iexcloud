module IEXCloud
  module Models
    class Quote < Model
      attribute :symbol
      attribute :company_name, from: :companyName
      attribute :calculation_price, from: :calculationPrice
      attribute :open
      attribute :open_time, from: :openTime
      attribute :close
      attribute :close_time, from: :closeTime
      attribute :high
      attribute :low
      attribute :latest_price, from: :latestPrice
      attribute :latest_source, from: :latestSource
      attribute :latest_time, from: :latestTime
      attribute :latest_update, from: :latestUpdate
      attribute :latest_volume, from: :latestVolume
      attribute :iex_realtime_price, from: :iexRealtimePrice
      attribute :iex_realtime_size, from: :iexRealtimeSize
      attribute :iex_last_updated, from: :iexLastUpdated
      attribute :delayed_price, from: :delayedPrice
      attribute :delayed_price_time, from: :delayedPriceTime
      attribute :extended_price, from: :extendedPrice
      attribute :extended_change, from: :extendedChange
      attribute :extended_change_percent, from: :extendedChangePercent
      attribute :extended_price_time, from: :extendedPriceTime
      attribute :previous_close, from: :previousClose
      attribute :change
      attribute :change_percent, from: :changePercent
      attribute :iex_market_percent, from: :iexMarketPercent
      attribute :iex_volume, from: :iexVolume
      attribute :avg_total_volume, from: :avgTotalVolume
      attribute :iex_bid_price, from: :iexBidPrice
      attribute :iex_bid_size, from: :iexBidSize
      attribute :iex_ask_price, from: :iexAskPrice
      attribute :iex_ask_size, from: :iexAskSize
      attribute :market_cap, from: :marketCap
      attribute :pe_ratio, from: :peRatio
      attribute :week52_high, from: :week52High
      attribute :week52_low, from: :week52Low
      attribute :ytd_change, from: :ytdChange
    end
  end
end
