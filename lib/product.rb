class Product
  attr_reader :price, :quantity 

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "#{@price} руб. (осталось #{@quantity})"
  end

  def update(params_upd)
    @price = params_upd[:price] if params_upd[:price]
    @quantity = params_upd[:quantity] if params_upd[:quantity]
  end
end
