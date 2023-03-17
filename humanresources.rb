$LOAD_PATH << '.'
require 'division'

class HumanResource < Division

  @@no_of_employees = 0

  def initialize(dept_id, dept_name)
    super(dept_id, dept_name)
    @@no_of_employees += 1
  end

  def show_hr_details
    super()
    puts "no. of employees in HR:#{@@no_of_employees}"
  end


end



