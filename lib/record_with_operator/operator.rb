module RecordWithOperator
  module Operator
    def rwo_operator=(o)
      RequestStore.store[:rwo_operator] = o
    end

    def rwo_operator
      RequestStore.store[:rwo_operator]
    end

    def with_rwo_operator(o)
      original = rwo_operator
      self.rwo_operator = o
      yield
    ensure
      self.rwo_operator = original
    end
  end
end
