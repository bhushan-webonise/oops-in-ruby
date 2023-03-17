class Service
  
  def initialize(service_id,service_name)
  @service_id=service_id
  @service_name=service_name  
  end

  def service_details()
    puts "#{@service_id}:#{@service_name}"
  end
 end

 srv=Service.new("1","internet")
 srv.service_details
 