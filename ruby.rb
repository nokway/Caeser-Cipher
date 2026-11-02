# Class for making a caeser shift to a message
class CaesarCipher
  attr_accessor :letters_array, :index

  def initialize
    @letters_array = %w[A B C D E F G H I J K L M N O P Q R S T
                        U V W X Y Z]
    @index = 0
  end

  def includes(letter)
    letter if letters_array.include?(letter)
  end

  def get_index(array, letter)
    array.index(letter)
  end

  def get_new_pos(array, current_index, amount)
    array[current_index + amount] if current_index + amount <= 26
    array[current_index + amount - 26] # if it exceeds 26, check the other branch for the calculation
  end

  def shift(letter, amount)
    @index = get_index(letters_array, letter)
    get_new_pos(letters_array, index, amount)
    # Returns expected character after shift
  end

  private

  def player_input
    self.message = gets.chomp
  end
end

# def caesar_cipher(string = "default", amount = 0)
#   string_arr = string.upcase.chars
#   new_array = []
#   expected_letter = ""
#   string_arr.each do |letter|
#     if letters_array.include?(letter)
#       # Select the expected letter
#       new_array.push(expected_letter)
#     else
#       new_array.push(letter)
#     end
#   end
#   new_array.join
# end
