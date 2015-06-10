require 'spec_helper'
describe Org::Manager do

  context "should be able to create a department with initial cash" do
    it "should create department with cash 1000 and allocate 2000 to the department" do
      manager = Org::Manager.new
      department = Org::Department.new('id',1000)
      expect(manager.allocate_cash(department, 2000)).to eq((3000))
    end
  end

end