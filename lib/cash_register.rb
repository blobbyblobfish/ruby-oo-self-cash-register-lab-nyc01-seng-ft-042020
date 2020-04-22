require 'pry'

class CashRegister 
    attr_accessor :total
    
    def initialize (employee_discount = 0)
        @total = 0
        @employee_discount = employee_discount
        @items = []
    end

    def discount 
        @employee_discount
    end

    def add_item (title, price, quantity = 1)
        self.total += price * quantity
        @title = title
        @quantity = quantity
        quantity.times {@items << title}
        @last_transaction = price * quantity
    end

    def apply_discount
        @total -= @total * @employee_discount / 100
        if @employee_discount > 0 
            return "After the discount, the total comes to $#{@total}."
        else return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end


