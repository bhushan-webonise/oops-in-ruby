$LOAD_PATH << '.'
require 'division'

class QA < Division
  attr_accessor :quality
  @@no_of_employees = 0

  def initialize(division_id, division_name,quality)
    super(division_id, division_name)
    @quality=quality
    @@no_of_employees += 1
  end

  def show_QA_details
    super()
    puts "Number of employees in QA - #{@@no_of_employees}"
    puts "Quality - #{quality}"
  end

  def QA_test
    puts "#{division_name} checks the quality of product"
  end
end


