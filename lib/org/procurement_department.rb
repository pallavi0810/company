# represents the financial situation of a procurement department
class Org::ProcurementDepartment < Org::BaseDepartment
  
  def initialize(department_balance)
    @department_balance = department_balance
  end

  def remaining_cash
    @department_balance
  end

end