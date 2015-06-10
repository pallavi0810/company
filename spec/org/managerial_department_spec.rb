require 'spec_helper'
describe Org::ManagerialDepartment do

  context "get remaining cash of department" do
    it "should return the remaining cash of all procurement departments under it" do
      department_array = [Org::ProcurementDepartment.new(1000), Org::ProcurementDepartment.new(2000)]
      department = Org::ManagerialDepartment.new(department_array)
      expect(department.remaining_cash).to eq(3000)
    end

    it "should return the remaining cash of all the departments under it" do
      department_array_1 = [Org::ProcurementDepartment.new(1000), Org::ProcurementDepartment.new(2000)]
      manager_department_1 = Org::ManagerialDepartment.new(department_array_1)
      department_array_2 = [manager_department_1, Org::ProcurementDepartment.new(1000)]
      manager_department_2 = Org::ManagerialDepartment.new(department_array_2)
      expect(manager_department_2.remaining_cash).to eq(4000)
    end

  end

end