def decode_char(morse_char)
  morse_code_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2',
    '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
    '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }
  morse_code_hash[morse_char]
end
# Test Single Character
puts decode_char(".-")        # is A
puts decode_char("-----")     # is 0
puts decode_char("--.-")      # is Q

def decode_word(morse_word)
  characters = morse_word.split
  decoded_character = ''
  characters.each { |char| decoded_character = "#{decoded_character}#{decode_char(char)}" }
  decoded_character
end

# Test Words
puts decode_word("-- -.--") # is MY

def decode(morse_sentence)
  words = morse_sentence.split('   ')
  decoded_words = []
  words.each { |word| decoded_words.push(decode_word(word)) }
  decoded_words.join(' ')
end

# Test Sentence
puts decode("-- -.--   -. .- -- .") # is MY NAME

# Morse Code Message
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
