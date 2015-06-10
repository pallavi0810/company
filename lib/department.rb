# represents the financial situation of a department
class Department

  def initialize(department_balance)
    @department_balance = department_balance
  end

  def get_remaining_cash
    @department_balance
  end

  def allocate_cash(cash_to_add)
    @department_balance += cash_to_add
  end 
end