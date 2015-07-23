module ElasticHelper
  module Aggregation
    class Term < ElasticHelper::AbstractQuery
      def initialize(opts)
        @name = opts[:name]
        @field = opts[:field]
      end

      def block
        Proc.new do |query|
          query.set! @name do
            query.terms do
              query.field @field
              query.order do
                query._term "asc"
              end
            end
          end
        end
      end
    end
  end
end