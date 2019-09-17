class CashRegister

  attr_accessor :total, :discount, :previous_total
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity=1)
    @previous_total = @total
    @total += (price * quantity)
    @total
  end
  
  def apply_discount
    @total = @total - ((@discount / 100) * total)
  end

end
