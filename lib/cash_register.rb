
require 'pry'
class CashRegister

    # @@all = []
  attr_accessor :total,:discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item = []
    end


    def total
       @total 
    end

    def discount
        @discount
    end

    def add_item (title,price,quantity=1)
    
    @total = total + price * quantity
    quantity.items do
        items<< title
    end

    def quantity
        @quantity
    end

    def price
        @price
    end

    def apply_discount
        if self.discount != 0
            discount_as_percent = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * discount_as_percent).to_i
            "After the discount, the total comes to $#{self.total}."
          else
            "There is no discount to apply."
          end
        end

    \

end

# puts haarika = CashRegister.new(100,0.20)
# binding.pry