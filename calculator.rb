def say(str)
  puts ".........#{str}........."
end

say "Enter the first number"

num1 = gets.chomp

say "Enter the second number"

num2 = gets.chomp

say "Press 'A' to Add, 'S' to Subtract, 'M' to Multiply, or 'D' to Divide:"

operator = gets.chomp

op =
  case operator.upcase
  when 'A' then '+'
  when 'S' then '-'
  when 'M' then '*'
  when 'D' then '/'
  end

result = 
  case operator.upcase
  when 'A' then num1.to_i + num2.to_i
  when 'S' then num1.to_i - num2.to_i
  when 'M' then num1.to_i * num2.to_i
  when 'D' then num1.to_f / num2.to_f 
  else puts "Invalid Operator"
  return
  end

puts "#{num1} #{op} #{num2} = #{result}"