module IEXCloud
  module Models
    class Collection
      include Enumerable
      extend Forwardable

      attr_reader :item_type, :response

      delegate [:each, :[], :size, :first, :last] => :items

      def initialize(item_type, response)
        @item_type = item_type
        @response = response
      end

      def items
        @items ||= response.map do |item|
          item_type.new(item)
        end
      end
    end
  end
end
