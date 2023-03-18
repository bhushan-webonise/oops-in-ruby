class Employee
  @@no_of_employees = 0
  attr_accessor :emp_id,:emp_name,:emp_designation,:emp_gender,:division_id
  
  def initialize(emp_id,emp_name,emp_designation,emp_gender,emp_dept_id)
   @emp_id=emp_id
   @emp_name=emp_name
   @emp_designation=emp_designation
   @emp_gender=emp_gender
   @emp_dept_id=emp_dept_id
  end
 

  def show_emp_details()
   puts "The name of the employee is #{@emp_name} and role of employee is #{@emp_designation}"
   puts "total employees: #{@@total_employee}"
  end
end



