require 'spec_helper'
describe Org::Department do
  
  context "get remaining cash of department" do
    it "should return the remaining cash of the department" do
      department = Org::Department.new('id',1000)
      expect(department.get_remaining_cash).to eq(1000)
    end
  end

  context "allocate cash to department" do
    it "should allocate cash 2000 to department" do
      department = Org::Department.new('id',1000)
      department.allocate_cash(2000)
      expect(department.get_remaining_cash).to eq(3000)
    end
  end

  context "get department id" do
    it "should return id of department" do
      department = Org::Department.new('id',1000)
      expect(department.get_department_id).to eq('id')
    end
  end

end