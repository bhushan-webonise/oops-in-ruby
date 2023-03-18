$LOAD_PATH << '.'
require 'csv'
require 'emp_details'
require 'division'
require 'humanresources'
require 'infotechnology'
require 'qa'
require 'employee'
require 'product'
require 'service'
class Company 
  @@total_no_of_employees=0
  attr_accessor :company_id,:company_name,:no_of_employee,:no_of_division
  include Emp_details 
  def initialize(company_id,company_name,no_of_employee,no_of_division)
   @company_id=company_id
   @company_name=company_name
   @no_of_division=no_of_division
  end
 
  def company_details()
   puts "The name of the company is #{@company_name} and the number of employee #{@@total_no_of_employees} and the number of division is #{@no_of_division}"
  end

  def create_employee()
  end

  
  def get_employee_details()
    csv_read
  end
 
  
 def csv_read
    employeedetails=[]
    file=CSV.parse(File.open(Emp_details.show_details,'r'))
    file.each do |row|
       puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]}"
    end
  end
end

obj_comp=Company.new("999","webonise","32","4","xyz")
obj_comp.get_employee_details()






