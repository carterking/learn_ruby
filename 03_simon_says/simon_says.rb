#write your code here
def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, y = 2)
  if y > 2
    z = y - 1
    myString = x
    while z > 0
      myString = myString + " " + x
      z = z - 1
    end
  else myString = x + " " + x   end
  return myString
end

def start_of_word(word, num)
  word[0..num - 1]
end

def first_word(sentence)
  x = []
  x = sentence.split(" ")
  return x[0]
end

def titleize(string)
  arr = string.split
  newArr = []
  newArr.push(arr.first.capitalize)
  i = 1
  while i < arr.length - 1
    if arr[i].length > 4
      newArr.push(arr[i].capitalize)
    else newArr.push(arr[i])     end
    i = i + 1
  end
  if arr.length > 1
    newArr.push(arr.last.capitalize)
  end
  newArr.join(" ")
end

titleize("hello world")
