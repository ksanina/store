require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'
require_relative 'lib/productcollection'

products = ProductCollection.from_dir

puts "Как хотите отсортировать список товаров?"
puts
puts "1. По остатку на складе: min -> max"
puts "2. По остатку на складе: max - > min"
puts "3. По названию: А -> Я"
puts "4. По названию: Я -> А"
puts "5. По цене: min -> max"
puts "6. По цене: max - > min"

user_choise = gets.chomp.to_i

puts
puts 'Вот какие товары у нас есть:'
puts
puts products.sort!(user_choise)
