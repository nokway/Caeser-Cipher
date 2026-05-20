




def caesar_cipher(string = "default", amount = 0)
  lettersArray = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

  stringArr = string.upcase.split("")
  
  newArray = []
  expectedLetter = ""
  stringArr.each do |letter| 
    if lettersArray.include?(letter) 
      
        index = lettersArray.index(letter)
        
          if index+amount < 26
              expectedLetter = lettersArray[index+amount] 
              newArray.push(expectedLetter)
          else
            expectedLetter = lettersArray[(index+amount)-26]
            newArray.push(expectedLetter)
          end
         


         
        

      
   
       
    else
      newArray.push(letter)
    end
  
    
    # print("index:, ", index)
    # print("Amount: ", amount)
    # print("Index + Amount", index+amount)
   
    
  end
  return newArray.join
  
end

print(caesar_cipher("What a string!", 5))

  
