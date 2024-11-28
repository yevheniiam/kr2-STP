def process_numbers(numbers)
  # Перевіряємо, чи був переданий блок
  if block_given?
    numbers.map { |num| yield(num) } # Виконуємо блок для кожного числа
  else
    raise "Будь ласка, передайте блок із математичною операцією!"
  end
end

# Приклад використання
array = [1, 2, 3, 4, 5]

# Застосуємо блок для збільшення кожного числа на 2
result = process_numbers(array) { |num| num + 2 }
puts "Результат: #{result}"

# Застосуємо блок для множення кожного числа на 3
result = process_numbers(array) { |num| num * 3 }
puts "Результат: #{result}"

# Застосуємо блок для зведення в квадрат
result = process_numbers(array) { |num| num**2 }
puts "Результат: #{result}"
