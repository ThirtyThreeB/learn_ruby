
def translate str
  words = str.split #this takes the sentence and makes it an array
  caps = false
  punc = ""
  is_punc = false
  answer = words.map do |word| 
    vowel = %w(a e i o u A E I O U)
    punctuation = %w(. , ? !)#let's leave it here
    new_word = word.dup
    #puts "new_word_top #{new_word}"
    caps = false
  
      if new_word.capitalize == new_word
        caps=true
         #puts "captest1= #{caps} #{new_word}"
      else caps==false
      end

      if punctuation.include?(word.chars.last)
        punc = word.chars.last
        word = word.chop
        is_punc = true
      else is_punc = false
      end

    case true 

    when word.slice(0,2)=="qu"#these are lousy edge cases with "qu"
      word.slice!(0,2)
      new_word = "#{word}qu"

    when word.slice(1,2)=="qu"#if the qu is after an s
      word.slice!(0,3)
      new_word = "#{word}squ"

    when vowel.include?(word.chars.first)#if first letter is a vowel
      new_word = "#{word}"

    when vowel.include?(word.chars[1])  #second letter is vowel
      first_letter = word.slice!(0)
      new_word = "#{word}#{first_letter}"

    when vowel.include?(word.chars[2]) #third letter is vowel
      first_two = word.slice!(0,2) #first two are not vowels
      new_word = "#{word}#{first_two}"

    when vowel.include?(word.chars[3]) #fourth letter is vowel
      first_three = word.slice!(0,3) #first three are not vowels
      new_word = "#{word}#{first_three}"
    end

    case true
    when caps == true
      new_word = new_word.capitalize 
    end

    case true
    when is_punc == true
      new_word = "#{new_word}ay#{punc}"
    else
    new_word = "#{new_word}ay"
    end
 
 end

#puts "2 capstest #{caps} #{answer.join(" ")}"
answer.join(" ")

end


