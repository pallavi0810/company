# represents the financial situation of a department
class Org::Department
  
  def initialize(id, department_balance)
    @department_balance = department_balance
    @department_id = id
  end

  def get_remaining_cash
    @department_balance
  end

  def allocate_cash(cash_to_add)
    @department_balance += cash_to_add
  end

  def get_department_id
    @department_id
  end
   
end