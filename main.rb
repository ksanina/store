require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

product1 = Movie.new( title: "Крутой пень", year: 2000, director: "Эд Дектер", price: 390, quantity: 4 )
product2 = Book.new( title: "Зачем мы спим", author: "Мэттью Уолкер", price: 650, quantity: 6 )

product1.year = 2002
product2.price = 880
product2.genre = "научно-популярная литература"

product1.update(price: 490, quantity: 2, title: "Крутой парень")

products = [product1, product2]

puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }
