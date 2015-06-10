require 'spec_helper'
describe Org::ProcurementDepartment do
  
  context "get remaining cash of department" do
    it "should return the remaining cash of the department" do
      department = Org::ProcurementDepartment.new(1000)
      expect(department.remaining_cash).to eq(1000)
    end
  end

end