class ProductCollection < Product

  def initialize (products)
    @products = products
  end

  def self.from_dir
    book_file_names = Dir["#{__dir__}/../data/books/*"]
    books = book_file_names.map { |book_file_name| Book.from_file(book_file_name) }

    movie_file_names = Dir["#{__dir__}/../data/movies/*"]
    movies = movie_file_names.map { |movie_file_name| Movie.from_file(movie_file_name) }

    cd_file_names = Dir["#{__dir__}/../data/cds/*"]
    cds = cd_file_names.map { |cd_file_name| Cd.from_file(cd_file_name) }

    self.new(books + movies + cds)
  end

  def to_a
    @products
  end

  def sort!(sort_option)
    case sort_option
    when 1 then @products.sort_by! { |product| product.quantity }
    when 2 then @products.sort_by! { |product| -product.quantity }
    when 3 then @products.sort_by! { |product| product.title }
    when 4 then @products.sort_by! { |product| product.title }.reverse!
    when 5 then @products.sort_by! { |product| product.price }
    when 6 then @products.sort_by! { |product| -product.price }
    end
  end
end
