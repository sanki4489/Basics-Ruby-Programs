class Customer
    def customer_details
        @fname + @lname
    end

    def set_customer_details
        @fname = 'Saras'
        @lname = 'Verma'
    end

#syntatic sugar
    def amount
        @amount
    end
    def amount=(value)
        @amount = value
    end    

# attr reader, writer, accessor
    # attr_reader :email 
    # attr_writer :email
    attr_accessor :email    
    #equivalent to above getter and setter code   
end

 customer = Customer.new
 customer.set_customer_details
 puts customer.customer_details

#getter sesster
 customer.amount = 100
 puts customer.amount

#attribute writer,reader, accessor
customer.email = 'sunklapverma4489@gmail.com'
puts customer.email 

#self only use it for writer methods and not use it for reader methods.



# Methods acces control
# 1.public - anyone can access
# 2.private - can only be called by instances of class
# 3.protected - can only be called by instance of class and its sublclasses.
