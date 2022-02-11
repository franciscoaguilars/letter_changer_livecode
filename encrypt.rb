def encrypt(text)
  # Define an alphabet array
  # Split the text (argument) into an array
  # Iterate the characters array
  # Shift the letters based on the index of the alphabet - 3
  # Create an array of encrypted letters
  # Join the encrypted letters into a new string

  alphabet = ('A'..'Z').to_a
  characters = text.split('')
  encrypted_array = []

  characters.each do |character|
    if character == ' '
      encrypted_array << ' '
    else
      # E
      # 4 - 3 => 1
      # alphabet[1]

      # A
      # 0 - 3 => -3
      # alphabet[-3]

      new_index = alphabet.index(character) - 3
      encrypted_array << alphabet[new_index]
    end
  end

  encrypted_array.join('')
end

# p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")