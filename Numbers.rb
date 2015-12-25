#Ruby Programming Course 1
equire 'date'

print 'Enter your name: '
name = gets.chomp

print 'Enter your birth date as 2 digit month, 2 digit day, and four digit year, example 03/31/1997: '
user_input_date = gets.chomp
user_input_date_split = user_input_date.split('/')
#puts user_input_date_split

birth_date_month = user_input_date_split.fetch(0).to_i
birth_date_day = user_input_date_split.fetch(1).to_i
birth_date_year = user_input_date_split.fetch(2).to_i
#puts "#{birth_date_year}/#{birth_date_month}/#{birth_date_day}"

birth_date = DateTime.new(birth_date_year, birth_date_month, birth_date_day, 0, 0, 0)
current_date = DateTime.now()
number_of_days = (current_date - birth_date).to_i
#puts number_of_days

puts "#{name} is #{number_of_days / 365} years old."
puts "\tin months\t: #{(number_of_days / (365 / 12))}"
puts "\tin days\t\t: #{number_of_days}"
puts "\tin hours\t: #{number_of_days * 24}"
puts "\tin minutes\t: #{number_of_days * 24 * 60}"
puts "\tin seconds\t: #{number_of_days * 24 * 60 * 60}"