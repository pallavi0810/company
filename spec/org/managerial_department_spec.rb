require 'spec_helper'
describe Org::ManagerialDepartment do

  context "get remaining cash of department" do
    it "should return the remaining cash of the department" do
      department_array = [Org::ProcurementDepartment.new(1000), Org::ProcurementDepartment.new(2000)]
      department = Org::ManagerialDepartment.new(department_array)
      expect(department.remaining_cash).to eq(3000)
    end
  end

end