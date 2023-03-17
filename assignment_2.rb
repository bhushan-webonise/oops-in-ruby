class Company
 attr_accessor :company_id,:company_name,:no_of_employee,:no_of_division,:hr_head_name
 def initialize(company_id,company_name,no_of_employee,no_of_division,hr_head_name)
  @company_id=company_id
  @company_name=company_name
  @no_of_employee=no_of_employee
  @no_of_division=no_of_division
  @hr_head_name=hr_head_name
 end

 def company_details
  puts "The name of the company is #{@company_name} and the number of employee #{@no_of_employee} and the number of division is #{@no_of_division}"
 end

 private
  def hr_details
    puts "The name of hr head is #{@hr_head_name}"
  end
end

class Division
  
  def initialize(dept_id,dept_name,no_of_employee,dept_slogan)
    @dept_id=dept_id
    @dept_name=dept_name
    @no_of_employee=no_of_employee
    @dept_slogan=dept_slogan
  end

  def dept_details()
    puts "#{@dept_id} :The  #{@dept_name} has #{@no_of_employee} employee"
  end
  
  def get_slogan()
    puts "#{@dept_name} : #{@dept_slogan}"
  end  
end

class HumanResource < Division
  
  def get_info()
    puts "in HR dept"
  end

end

class InfoTechnology < Division
  def get_info()
    puts "in HR dept"
    end
end

class QA < Division
  def get_info()
    puts "in QA dept"
  end
end

class Sale < Division
    def get_info()
      puts "in sales deppt"
    end
end

hr_info=HumanResource.new("1","HR","10","in HR dept")
hr_info.dept_details

qa_info=QA.new("2","QA","20","in QA dept")
qa_info.dept_details

sales_info=Sale.new("3","Sales","30","in Sales dept")
sales_info.dept_details

it_info=InfoTechnology.new("4","IT","40","in IT dept")
it_info.dept_details

