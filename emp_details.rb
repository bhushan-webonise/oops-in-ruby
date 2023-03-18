require 'csv'
module Emp_details 
  def self.write_file(emp_id,emp_name,emp_designation,emp_gender,department_id)
    CSV.open('employeedetails.csv','a') do |i|
      i << [emp_id,emp_name,emp_designation,emp_gender,department_id]
    end
  end

  def self.read_file
    puts CSV.read('employeedetails.csv')
  end
end

