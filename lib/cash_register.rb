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
    @total = @total.to_f - ((@discount.to_f / 100.to_f) * total.to_f)
    "After the discout, the total comes to $#{total.to_i}"
  end

end
