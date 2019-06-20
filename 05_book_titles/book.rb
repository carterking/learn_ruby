class Book
  # write your code here

  attr_accessor :title

  def title
    titleize(@title)
  end

  def titleize(string)
    arr = string.split
    newArr = []
    newArr.push(arr.first.capitalize)
    i = 1
    while i < arr.length - 1
      if arr[i] != "the" && arr[i] != "and" && arr[i].length >= 3
        newArr.push(arr[i].capitalize)
      else newArr.push(arr[i])       end
      i = i + 1
    end
    if arr.length > 1
      newArr.push(arr.last.capitalize)
    end
    answerStr = newArr.join(" ")
    answerStr.gsub(" i ", " I ")
  end
end
