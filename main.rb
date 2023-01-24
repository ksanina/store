require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'

book = Book.from_file('./data/books/01.txt')
movie = Movie.from_file('./data/movies/01.txt')
cd = Cd.from_file('./data/books/01.txt')

puts 'Вот какие товары у нас есть:'
puts
puts book
puts movie
puts cd
