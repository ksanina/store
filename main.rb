
# Сейчас вы из коллекции получаете массив товаров и саму коллекцию не используете. 
# Предлагаю наоборот — расширить функционал коллекции и пользоваться её методами, а не выдёргивать наружу массив

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'
require_relative 'lib/product_collection'

dir_path = "#{__dir__}/data"
products = ProductCollection.from_dir(dir_path)

until products.to_a.empty? do
  puts "Что хотите купить:"
  puts
  puts products.list
  puts "0. Выход"
  puts
  user_choise = gets.chomp.to_i
  puts

  until (0..products.list.size).include?(user_choise)
    puts "Вы указали неверный номер. Введите число от 0 до #{products.list.size}:"
    puts
    user_choise = gets.chomp.to_i
    puts
  end

  products.chousen_product(user_choise)

  if user_choise == 0
    break
  else
    products.delete_from_list!
    puts "Вы выбрали:"
    puts products.in_basket
    puts "Всего товаров на сумму: #{products.total_price_up!} руб."
  end
end

puts "Вы купили:"
puts products.in_basket
puts
puts "С Вас: #{products.total_price_up!} руб."
