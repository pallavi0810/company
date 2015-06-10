# represents the financial situation of a manaagerial department
class Org::ManagerialDepartment < Org::BaseDepartment
  
  def initialize(sub_department_array)
    @sub_department_array = sub_department_array
  end

  def remaining_cash
    @sub_department_array.inject{|sum_amount_department, sub_department| sum_amount_department.remaining_cash + sub_department.remaining_cash}
  end
   
end