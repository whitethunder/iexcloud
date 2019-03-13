# @api public
module IEXCloud
  module Api
    module Quotes
      extend self

      # Retrieves latest quote for a symbol
      #
      # @param symbol [String]
      # @return [IEXCloud::Models::Quote]
      def find(symbol)
        response = Request.new("/stock/#{symbol}/quote").get
        Models::Quote.new(response.body)
      end
    end
  end
end
