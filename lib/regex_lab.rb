def starts_with_a_vowel?(word)
  if word[0].scan(/\b[aeiouAEIOU]/) != []
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
# \bun\w+ing
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z].*[\.!?]$/) != []
#  if (text[0].scan(/[A-Z]/)) != [] && (text[-1].scan(/\w/)) != []
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  # valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
  # 2438894546 (718)891-1313 234 435 9978 (800)4261134
  number_array = phone.scan(/.*(\d{3}).*(\d{3}).*(\d{4})/)
#  number_array = 2438894546.scan(/.*(\d{3}).*(\d{3}).*(\d{4})/)
#  number_array = (718)891-1313.scan(/.*(\d{3}).*(\d{3}).*(\d{4})/)
#  number_array = 234 435 9978.scan(/.*(\d{3}).*(\d{3}).*(\d{4})/)
  if number_array[0]
    if (number_array[0][0].length == 3) && (number_array[0][1].length == 3) && (number_array[0][2].length == 4)
      true
    else
      false
    end
  else
    false
  end
end
