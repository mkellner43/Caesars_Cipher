puts "Enter the letters you would like to encrypt:"
string = gets.chomp
puts "Enter a number you would like to shift the letters by:"
number = gets.chomp.to_i 
unless number.is_a? Numeric
  puts "Try again you fool!"
  puts "Enter a number you would like to shift the letters by:"
  number = gets.chomp
end  
# Console interface for user to enter custom string / number 


def cesears_cipher(string, number)
  initial_array = []
  modified_array = []

  string.chars.map do |char| # iterates over each character in string

      char_number = char.ord # unmodified character number 
      initial_array.push(char_number) # unmodified array for character number

      base = char_number < 91 ? 65 : 97 #if char_number is less than 91 (upcase)
      # sets base equal to 65 else it will set base equal to 97 (downcase)

    if(65..90).include?(char_number) || (97..122).include?(char_number)
      # checks the a range of against char_number to see if it is included
      # in 65-90 (upcase) or 97-122 (downcase) ("A-Z" or "a-z" respectively) 

      modify = ((((char_number - base) + number) % 26) + base)
      # takes out the base of the character numbers so we can work with
      # a number between 0-25, if the number we are trying to 
      # shift by is divisible by 26 it will divide and return the remainder
      # giving us a number between 0-25 again which we will add the base back
      # to so that we can modify to the correct alphbetical number!

      modified_array.push(modify.chr)
    else 
      modified_array.push(char) # if not "A-Z" or "a-z" will put the original character
    end
  end 
  modified_array.join("") # brings everything back together as a string
end

p cesears_cipher(string, number)

# 65-90 is upcase and 97-122 is downcase 