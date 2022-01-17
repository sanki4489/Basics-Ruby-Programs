# Ruby Instance method of class
# 1.Method called automatically whenever a new instance of a class is created.
# 2.Useful to set attributes to a default or specific state
# 3.Accepts arguments
class Buyer
    attr_accessor :name, :item
    def initialize(options={})
        self.name = options[:name] || "sankalp"
        self.item = options[:item] || "brush"
        puts "#{name} just purchased #{item}."
    end
end

buyer = Buyer.new(name: "saras", item: "comb")
