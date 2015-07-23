module ElasticHelper
  module Filter
    class GeoDistance < ::ElasticHelper::AbstractQuery
      def initialize(opts)
        raise "You need to provide a lat and a lon options" unless opts[:lat] && opts[:lon]
        @lat      = opts[:lat]
        @lon      = opts[:lon]
        @distance = opts[:distance] || '10km'
      end

      def block
        Proc.new do |query|
          query.geo_distance do
            query.distance @distance
            query.location do
              query.lat @lat
              query.lon @lon
            end
          end
        end
      end
    end
  end
end