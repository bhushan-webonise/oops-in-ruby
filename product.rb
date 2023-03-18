class Product
  
  def initialize(product_id,product_name)
   @product_id=product_id
   @product_name=product_name
  end

 def product_details()
   puts "#{@product_id}:#{@product_name}"
 end

 end

 prod=Product.new("1","cococola")
 prod.product_details
 
