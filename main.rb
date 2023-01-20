require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

products << Movie.new( title: "Крутой парень", year: 2002, director: "Эд Дектер", price: 390, quantity: 4 )
products << Movie.new( title: "Грань будущего", year: 2014, director: "Даг Лайман", price: 450, quantity: 2 )
products << Movie.new( title: "Миллион способов потерять голову", year: 2014, director: "Сет МакФарлейн", price: 350, quantity: 3 )
products << Book.new( title: "Зачем мы спим", genre: "научно-популярная литература", author: "Мэттью Уолкер", price: 650, quantity: 6 )
products << Book.new( title: "Нина - Дитя луны", genre: "детская литература", author: "Луни Витчер", price: 330, quantity: 3 )
products << Book.new( title: "Гарри Поттер и философский камень", genre: "детская литература", author: "Джоан Роулинг", price: 520, quantity: 11 )

puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }
