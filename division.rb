class Division
  attr_accessor :dept_id,:dept_name
  
  @@total_no_of_employees = 0

  def initialize(dept_id,dept_name)
    @dept_id=dept_id
    @dept_name=dept_name
    @@total_no_of_employees += 1
  end

  def dept_details()
    puts "#{@dept_id} :The  #{@dept_name} has #{@@total_no_of_employees} employee"
  end
  
end


