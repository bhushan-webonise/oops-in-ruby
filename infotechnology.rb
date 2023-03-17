class InfoTechnology < Division

  @@no_of_employees = 0

  def initialize(dept_id, dept_name)
    super(dept_id, dept_name)
    @@no_of_employees += 1
  end

  def show_IT_details
    super()
    puts "Number of employees in IT - #{@@no_of_employees}"
  end

  
end
