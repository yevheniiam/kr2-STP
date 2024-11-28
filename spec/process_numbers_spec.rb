# spec/process_numbers_spec.rb

require 'rspec'

def process_numbers(numbers)
  if block_given?
    numbers.map { |num| yield(num) }
  else
    raise "Будь ласка, передайте блок із математичною операцією!"
  end
end

RSpec.describe 'process_numbers' do
  it 'повертає масив з результатами операцій для кожного числа' do
    array = [1, 2, 3, 4, 5]

    result = process_numbers(array) { |num| num + 2 }

    expect(result).to eq([3, 4, 5, 6, 7])
  end

  it 'повертає масив з результатами множення для кожного числа' do
    array = [1, 2, 3, 4, 5]

    result = process_numbers(array) { |num| num * 3 }

    expect(result).to eq([3, 6, 9, 12, 15])
  end

  it 'повертає масив з квадратами чисел' do
    array = [1, 2, 3, 4, 5]

    result = process_numbers(array) { |num| num**2 }

    expect(result).to eq([1, 4, 9, 16, 25])
  end

  it 'викидає помилку, якщо не передано блок' do
    array = [1, 2, 3]

    expect { process_numbers(array) }.to raise_error("Будь ласка, передайте блок із математичною операцією!")
  end
end
