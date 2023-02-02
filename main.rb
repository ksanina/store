require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/cd'
require_relative 'lib/productcollection'

products = ProductCollection.from_dir
user_choise = 0
chousen_products = []
total_price = 0
products_array = products.to_a

until products_array == [] do
  puts "Что хотите купить:"
  puts
 
  products_array.each.with_index(1) do |product, index|
    puts "#{index}. #{product.to_s}"
  end

  puts "0. Выход"
  puts
  
  user_choise = gets.chomp.to_i
  puts
  
  until (0..products_array.size).include?(user_choise)
    puts "Вы указали неверный номер. Введите число от 0 до #{products_array.size}:"
    puts
    user_choise = gets.chomp.to_i
    puts
  end

  if user_choise == 0
    break
  else
    user_choise -= 1
    chousen_products << products_array[user_choise]
    total_price += products_array[user_choise].price
    products_array[user_choise].quantity -= 1

    puts "Вы выбрали: #{products_array[user_choise].to_s}"
    puts
    puts "Всего товаров на сумму: #{total_price} руб."
    puts

    products_array.delete(products_array[user_choise]) if products_array[user_choise].quantity == 0
  end
end

puts "Вы купили:"
puts
puts chousen_products.to_a
puts
puts "С Вас — #{total_price} руб. Спасибо за покупки!"
