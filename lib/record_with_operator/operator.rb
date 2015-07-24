module RecordWithOperator
  module Operator
    def rwo_operator=(o)
      Thread.current[:rwo_operator] = o
    end

    def rwo_operator
      Thread.current[:rwo_operator]
    end
  end
end
