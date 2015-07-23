module ElasticHelper
  module Filter
    class And < ::ElasticHelper::Collection
      def block
        Proc.new do |query|
          query.and do
            query.array! @filters do |filter|
              filter.call(query)
            end
          end
        end
      end
    end
  end
end