# Class for making a caeser shift to a message
class CaesarCipher
  attr_accessor :expected_letter, :message, :letters_array, :old_letter

  def initialize
    @letters_array = %w[A B C D E F G H I J K L M N O P Q R S T
                        U V W X Y Z]
  end

  def includes(letter)
    letter if letters_array.include?(letter)
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
