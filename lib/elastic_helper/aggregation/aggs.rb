module ElasticHelper
  module Aggregation
    class Aggs < ::ElasticHelper::Collection
      def block
        Proc.new do |query|
          query.aggs do
            @filters.each{ |filter| filter.call(query) }
          end
        end
      end
    end
  end
end