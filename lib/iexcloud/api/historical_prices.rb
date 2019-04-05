# @api public
module IEXCloud
  module Api
    module HistoricalPrices
      extend self

      # Retrieves latest quote for a symbol
      #
      # @param symbol [String]
      # @param range [String] (https://iexcloud.io/docs/api/#historical-prices for options)
      # @param date [String] (YYMMDD)
      # @return [IEXCloud::Models::Quote]
      def find(symbol, range: nil, date: nil, options: {})
        response = Request.new(find_path(symbol, range, date), options).get
        Models::Collection.new(find_model(date, options), response.body)
      end

      def find_path(symbol, range, date)
        path = "/stock/#{symbol}/chart"
        if range
          path += "/#{range}"
        elsif date
          path += "/date/#{date}"
        end
        path
      end

      def find_model(date, options)
        if date
          return Models::HistoricalPrice if options[:chartByDay]
          return Models::HistoricalPriceTick
        end
        Models::HistoricalPrice
      end
    end
  end
end
