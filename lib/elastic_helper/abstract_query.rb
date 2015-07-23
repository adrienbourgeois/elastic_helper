module ElasticHelper
  class AbstractQuery
    def block
      raise NotImplementedError
    end

    def build(query=nil)
      if query
        block.call(query)
      else
        Jbuilder.new{ |query| block.call(query) }
      end
    end
  end
end