class Product
  attr_reader :price, :quantity 

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "#{@price} руб. (осталось #{@quantity})"
  end
end
