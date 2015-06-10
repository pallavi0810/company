# represents the financial situation of a department
class Org::ManagerialDepartment < Org::BaseDepartment
  
  def initialize(sub_department_array)
    @sub_department_array = sub_department_array
  end

  def remaining_cash
    @sub_department_array.inject{|sum_amount_department, procurement_department| sum_amount_department.remaining_cash + procurement_department.remaining_cash}
  end
   
end