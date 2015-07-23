module ElasticHelper
  class Collection < AbstractQuery
    def initialize
      @filters = []
    end

    def add(query)
      @filters << query.block
      self
    end

    def count
      @filters.count
    end
  end
end