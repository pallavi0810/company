require 'spec_helper'
describe Department do
  context "get remaining cash of department" do
    it "should return the remaining cash of the department" do
      department = Department.new(1000)
      expect(department.get_remaining_cash).to eq(1000)
    end
  end
end