class CaesarCipher
  attr_accessor :index

  def initialize(index, expected_letter)
    @index = index
    @letters_array = %w[A B C D E F G H I J K L M N O P Q R S T
                        U V W X Y Z]
    @expected_letter = expected_letter
  end

  def index(letters_array, index)
    self.index = letters_array.index(index)
  end

  def expectedletter(amount, index, letters_array)
    # For expected letter
    self.expected_letter = if index + amount < 26
                             letters_array[index + amount]
                           else
                             letters_array[(index + amount) - 26]
                           end
  end

  def play
  end
end

def caesar_cipher(string = "default", amount = 0)
  string_arr = string.upcase.chars
  new_array = []
  expected_letter = ""
  string_arr.each do |letter|
    if letters_array.include?(letter)
      # Select the expected letter
      new_array.push(expected_letter)
    else
      new_array.push(letter)
    end
  end
  new_array.join
end
