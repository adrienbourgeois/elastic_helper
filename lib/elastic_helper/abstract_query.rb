module ElasticHelper
  class AbstractQuery
    def block
      raise NotImplementedError
    end

    def build(query)
      block.call(query)
    end
  end
end