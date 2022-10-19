class Player
  attr_reader :name, :monthly_cost, :contract_length
    def initialize(name, monthly_cost, contract_length)
        @name = name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
    end

    def first_name
      name_f = @name.split
      p name_f[0]
    end

    def last_name
      name_l = @name.split
      p name_l[1]
    end

    def total_cost
      @contract_length * @monthly_cost
    end
end
