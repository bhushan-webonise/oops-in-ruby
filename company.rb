$LOAD_PATH << '.'
require 'csv'
require 'emp_module'
class Company 

  attr_accessor :company_id,:company_name,:no_of_employee,:no_of_division,:hr_head_name
  include Emp_details 
  def initialize(company_id,company_name,no_of_employee,no_of_division,hr_head_name)
   @company_id=company_id
   @company_name=company_name
   @no_of_employee=no_of_employee
   @no_of_division=no_of_division
   @hr_head_name=hr_head_name
  end
 
  def company_details()
   puts "The name of the company is #{@company_name} and the number of employee #{@no_of_employee} and the number of division is #{@no_of_division}"
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