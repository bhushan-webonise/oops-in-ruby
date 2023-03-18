$LOAD_PATH << '.'
require 'division'

class HumanResource < Division
  attr_accessor :hiring
  @@no_of_employees = 0

  def initialize(division_id, division_name,hiring)
    super(division_id, division_name)
    @hiring=hiring
    @@no_of_employees += 1
  end

  def show_hr_details
    super()
    puts "no. of employees in HR:#{@@no_of_employees} and hiring:#{hiring}"
  end
  
  def recruit
    puts "#{division_name} hires the employee"
  end
end







