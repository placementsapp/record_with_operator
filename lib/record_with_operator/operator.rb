module RecordWithOperator
  module Operator
    def rwo_operator=(o)
      RequestStore.store[:rwo_operator] = o
    end

    def rwo_operator
      RequestStore.store[:rwo_operator]
    end
  end
end
