def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, n=2)
  [input] * n * ' '
end

def start_of_word(input, n)
  input[0, n]
end  

def first_word(input)
  arr=input.split
  arr[0]
end

def titleize input
  arr=input.split
  #arr[0].capitalize
  arr.each do |word|
    if word != 'and' && word != 'over' && word != 'the'
      word.capitalize!
    elsif word==arr[0]
      word.capitalize!
    end
  end
  arr.join(' ')
end
  
