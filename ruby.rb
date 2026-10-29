class CaesarCipher
  def initialize
    @letters_array = %w[A B C D E F G H I J K L M N O P Q R S T
                        U V W X Y Z]
    @expected_letter = ""
  end

  def index(letters_array, index)
    self.index = letters_array.index(index)
  end

  def pushletter(expected_letter, new_array)
    new_array.push(expected_letter)
  end

  def expectedletter(amount, index)
    self.expected_letter = less26(index, amount) || more26(index, amount)
  end

  def less26(index, amount)
    return unless index + amount < 26

    @letters_array[index + amount]
  end

  def more26(index, amount)
    @letters_array[(index + amount) - 26]
  end

  def play
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
