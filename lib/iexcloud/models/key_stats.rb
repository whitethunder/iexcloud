module IEXCloud
  module Models
    class KeyStats < Model
      # @return [Integer]
      attribute :market_cap, Types::Coercible::Integer, from: :marketcap

      # @return [Float]
      attribute :week_52_change, Types::Coercible::Float, from: :week52change

      # @return [Float]
      attribute :week_52_high, Types::Coercible::Float, from: :week52high

      # @return [Float]
      attribute :week_52_low, Types::Coercible::Float, from: :week52low

      # @return [Integer]
      attribute :market_cap, Types::Coercible::Integer, from: :marketcap

      # @return [Integer]
      attribute :employees, Types::Coercible::Integer, from: :employees

      # @return [Float]
      attribute :day_200_moving_avg, Types::Coercible::Float, from: :day200MovingAvg

      # @return [Float]
      attribute :day_50_moving_avg, Types::Coercible::Float, from: :day50MovingAvg

      # @return [Integer]
      attribute :float, Types::Coercible::Integer, from: :float

      # @return [Float]
      attribute :avg_10_volume, Types::Coercible::Float, from: :avg10Volume

      # @return [Float]
      attribute :avg_30_volume, Types::Coercible::Float, from: :avg30Volume

      # @return [Float]
      attribute :ttm_eps, Types::Coercible::Float, from: :ttmEPS

      # @return [Float]
      attribute :ttm_dividend_rate, Types::Coercible::Float, from: :ttmDividendRate

      # @return [String]
      attribute :company_name, Types::Coercible::String, from: :companyName

      # @return [Integer]
      attribute :shares_outstanding, Types::Coercible::Integer, from: :sharesOutstanding

      # @return [Float]
      attribute :max_change_percent, Types::Coercible::Float, from: :maxChangePercent

      # @return [Float]
      attribute :year_5_change_percent, Types::Coercible::Float, from: :year5ChangePercent

      # @return [Float]
      attribute :year_2_change_percent, Types::Coercible::Float, from: :year2ChangePercent

      # @return [Float]
      attribute :year_1_change_percent, Types::Coercible::Float, from: :year1ChangePercent

      # @return [Float]
      attribute :ytd_change_percent, Types::Coercible::Float, from: :ytdChangePercent

      # @return [Float]
      attribute :month_6_change_percent, Types::Coercible::Float, from: :month6ChangePercent

      # @return [Float]
      attribute :month_3_change_percent, Types::Coercible::Float, from: :month3ChangePercent

      # @return [Float]
      attribute :month_1_change_percent, Types::Coercible::Float, from: :month1ChangePercent

      # @return [Float]
      attribute :day_30_change_percent, Types::Coercible::Float, from: :day30ChangePercent

      # @return [Float]
      attribute :day_5_change_percent, Types::Coercible::Float, from: :day5ChangePercent

      # @return [Float]
      attribute :next_dividend_rate, Types::Coercible::Float, from: :nextDividendRate

      # @return [Float]
      attribute :dividend_yield, Types::Coercible::Float, from: :dividendYield

      # @return [String]
      attribute :next_earnings_date, Types::Coercible::String, from: :nextEarningsDate

      # @return [String]
      attribute :ex_dividend_date, Types::Coercible::String, from: :exDividendDate

      # @return [Float]
      attribute :pe_ratio, Types::Coercible::Float, from: :peRatio
    end
  end
end
