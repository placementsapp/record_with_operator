module RecordWithOperator
  module Operator
    def rwo_operator=(o)
      RequestStore.store[:rwo_operator] = o
    end

    def rwo_operator
      RequestStore.store[:rwo_operator]
    end

    def rwo_copilot=(cp)
      RequestStore.store[:rwo_copilot] = cp
    end

    def rwo_copilot
      RequestStore.store[:rwo_copilot]
    end

    def with_rwo_operator(o, copilot: nil)
      original = rwo_operator
      self.rwo_operator = o
      self.rwo_copilot = copilot if copilot.present?
      yield
    ensure
      self.rwo_operator = original
    end
  end
end
