module IEXCloud
  module Api
    module Quotes
      extend self

      def find(symbol)
        response = Request.new("/stock/#{symbol}/quote").get
        Models::Quote.new(response.body)
      end
    end
  end
end
