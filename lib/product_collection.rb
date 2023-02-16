class ProductCollection < Product

  attr_reader :products, :total_price, :basket

  PRODUCT_TYPES = [
    {dir: 'movies', class: Movie},
    {dir: 'books', class: Book},
    {dir: 'cds', class: Cd}
  ]
  def initialize (products = [])
    @products = products
    @total_price = 0
    @chousen_product = nil
    @basket = []
  end

  def self.from_dir(dir_path)
    products = []
    
    PRODUCT_TYPES.each do |hash|
      product_dir = hash[:dir]
      product_class = hash[:class]
      Dir[dir_path + "/#{product_dir}/*.txt"].each do |file_name|
        products << product_class.from_file(file_name)
      end
    end

    self.new(products)
  end

  def to_a
    @products
  end

  def sort!(sort_options)
    case sort_options[:by]
    when :quantity then @products.sort_by! { |product| product.quantity }
    when :title then @products.sort_by! { |product| product.title }
    when :price then @products.sort_by! { |product| product.price }
    end

    @products.reverse! if sort_options[:order] == :asc
  end

  def list
    list = []
    @products.to_a.each.with_index(1) do |product, index|
      list << "#{index}. #{product.to_s}"
    end
    list
  end
  
  def chousen_product(user_choise)
    @chousen_product = @products[user_choise - 1]
  end

  def total_price_up!
    @total_price += @chousen_product.price
  end

  def delete_from_list!
    @chousen_product.quantity -= 1
    @products.delete(@chousen_product) if @chousen_product.quantity == 0
  end

  def in_basket
    @basket << @chousen_product
  end
end
