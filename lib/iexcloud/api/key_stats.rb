# @api public
module IEXCloud
  module Api
    module KeyStats
      extend self

      # Retrieves key stats for a symbol
      #
      # @param symbol [String]
      # @param stat [String] (optional)
      # @return [IEXCloud::Models::KeyStats]
      def find(symbol, stat=nil)
        response = Request.new("/stock/#{symbol}/stats/#{stat}").get
        stat ? Models::KeyStats.new("#{stat}" => response.body) : Models::KeyStats.new(response.body)
      end
    end
  end
end
