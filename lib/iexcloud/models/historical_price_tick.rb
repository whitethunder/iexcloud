module IEXCloud
  module Models
    class HistoricalPriceTick < Model
      # @return [Float]
      attribute :date, Types::Coercible::String

      # @return [Float]
      attribute :minute, Types::Coercible::String

      # @return [Float]
      attribute :label, Types::Coercible::String

      # @return [Float]
      attribute :high, Types::Coercible::Float

      # @return [Float]
      attribute :low, Types::Coercible::Float

      # @return [Float]
      attribute :average, Types::Coercible::Float

      # @return [Float]
      attribute :volume, Types::Coercible::Integer

      # @return [Float]
      attribute :notional, Types::Coercible::Float

      # @return [Float]
      attribute :number_of_trades, Types::Coercible::Integer, from: :numberOfTrades

      # @return [Float]
      attribute :market_high, Types::Coercible::Float, from: :marketHigh

      # @return [Float]
      attribute :market_low, Types::Coercible::Float, from: :marketLow

      # @return [Float]
      attribute :market_average, Types::Coercible::Float, from: :marketAverage

      # @return [Float]
      attribute :market_volume, Types::Coercible::Integer, from: :marketVolume

      # @return [Float]
      attribute :market_notional, Types::Coercible::Float, from: :marketNotional

      # @return [Float]
      attribute :market_number_of_trades, Types::Coercible::Integer, from: :marketNumberOfTrades

      # @return [Float]
      attribute :open, Types::Coercible::Float

      # @return [Float]
      attribute :close, Types::Coercible::Float

      # @return [Float]
      attribute :market_open, Types::Coercible::Float, from: :marketOpen

      # @return [Float]
      attribute :market_close, Types::Coercible::Float, from: :marketClose

      # @return [Float]
      attribute :change_over_time, Types::Coercible::Float, from: :changeOverTime

      # @return [Float]
      attribute :market_change_over_time, Types::Coercible::Float, from: :marketChangeOverTime
    end
  end
end
