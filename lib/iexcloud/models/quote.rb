module IEXCloud
  module Models
    class Quote < Model
      # @return [String]
      attribute :symbol, Types::Coercible::String

      # @return [String]
      attribute :company_name, Types::Coercible::String, from: :companyName

      # @return [String]
      attribute :calculation_price, Types::Coercible::String, from: :calculationPrice

      # @return [Float]
      attribute :open, Types::Coercible::Float

      # @return [Integer]
      attribute :open_time, Types::Coercible::Integer, from: :openTime

      # @return [Float]
      attribute :close, Types::Coercible::Float

      # @return [Integer]
      attribute :close_time, Types::Coercible::Integer, from: :closeTime

      # @return [Float]
      attribute :high, Types::Coercible::Float

      # @return [Float]
      attribute :low, Types::Coercible::Float

      # @return [Float]
      attribute :latest_price, Types::Coercible::Float, from: :latestPrice

      # @return [String]
      attribute :latest_source, Types::Coercible::String, from: :latestSource

      # @return [String]
      attribute :latest_time, Types::Coercible::String, from: :latestTime

      # @return [Integer]
      attribute :latest_update, Types::Coercible::Integer, from: :latestUpdate

      # @return [Integer]
      attribute :latest_volume, Types::Coercible::Integer, from: :latestVolume

      # @return [Float]
      attribute :iex_realtime_price, Types::Coercible::Float, from: :iexRealtimePrice

      # @return [Integer]
      attribute :iex_realtime_size, Types::Coercible::Integer, from: :iexRealtimeSize

      # @return [Integer]
      attribute :iex_last_updated, Types::Coercible::Integer, from: :iexLastUpdated

      # @return [Float]
      attribute :delayed_price, Types::Coercible::Float, from: :delayedPrice

      # @return [Integer]
      attribute :delayed_price_time, Types::Coercible::Integer, from: :delayedPriceTime

      # @return [Float]
      attribute :extended_price, Types::Coercible::Float, from: :extendedPrice

      # @return [Float]
      attribute :extended_change, Types::Coercible::Float, from: :extendedChange

      # @return [Float]
      attribute :extended_change_percent, Types::Coercible::Float, from: :extendedChangePercent

      # @return [Integer]
      attribute :extended_price_time, Types::Coercible::Integer, from: :extendedPriceTime

      # @return [Float]
      attribute :previous_close, Types::Coercible::Float, from: :previousClose

      # @return [Float]
      attribute :change, Types::Coercible::Float

      # @return [Float]
      attribute :change_percent, Types::Coercible::Float, from: :changePercent

      # @return [Float]
      attribute :iex_market_percent, Types::Coercible::Float, from: :iexMarketPercent

      # @return [Integer]
      attribute :iex_volume, Types::Coercible::Integer, from: :iexVolume

      # @return [Float]
      attribute :avg_total_volume, Types::Coercible::Integer, from: :avgTotalVolume

      # @return [Float]
      attribute :iex_bid_price, Types::Coercible::Float, from: :iexBidPrice

      # @return [Integer]
      attribute :iex_bid_size, Types::Coercible::Integer, from: :iexBidSize

      # @return [Float]
      attribute :iex_ask_price, Types::Coercible::Float, from: :iexAskPrice

      # @return [Integer]
      attribute :iex_ask_size, Types::Coercible::Integer, from: :iexAskSize

      # @return [Integer]
      attribute :market_cap, Types::Coercible::Integer, from: :marketCap

      # @return [Float]
      attribute :pe_ratio, Types::Coercible::Float, from: :peRatio

      # @return [Float]
      attribute :week52_high, Types::Coercible::Float, from: :week52High

      # @return [Float]
      attribute :week52_low, Types::Coercible::Float, from: :week52Low

      # @return [Float]
      attribute :ytd_change, Types::Coercible::Float, from: :ytdChange
    end
  end
end
