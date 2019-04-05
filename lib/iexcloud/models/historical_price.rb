module IEXCloud
  module Models
    class HistoricalPrice < Model
      # @return [String]
      attribute :date, Types::Coercible::String, from: :date

      # @return [Float]
      attribute :open, Types::Coercible::Float, from: :open

      # @return [Float]
      attribute :close, Types::Coercible::Float, from: :close

      # @return [Float]
      attribute :high, Types::Coercible::Float, from: :high

      # @return [Float]
      attribute :low, Types::Coercible::Float, from: :low

      # @return [Integer]
      attribute :volume, Types::Coercible::Integer, from: :volume

      # @return [Float]
      attribute :unadjusted_open, Types::Coercible::Float, from: :uOpen

      # @return [Float]
      attribute :unadjusted_close, Types::Coercible::Float, from: :uClose

      # @return [Float]
      attribute :unadjusted_high, Types::Coercible::Float, from: :uHigh

      # @return [Float]
      attribute :unadjusted_low, Types::Coercible::Float, from: :uLow

      # @return [Integer]
      attribute :unadjusted_volume, Types::Coercible::Integer, from: :uVolume

      # @return [Float]
      attribute :change, Types::Coercible::Float, from: :change

      # @return [Float]
      attribute :change_percent, Types::Coercible::Float, from: :changePercent

      # @return [String]
      attribute :label, Types::Coercible::String, from: :label

      # @return [Float]
      attribute :change_over_time, Types::Coercible::Float, from: :changeOverTime
    end
  end
end
