def vowelFirst(arr)
  arr.push("ay")
end

def consFirst(arr)
  #puts arr
  vowelFound = false
  i = 1
  indexOfVowel = 1
  until vowelFound
    if arr[i].count("aeiou") >= 1 && arr[i].length < 2
      indexOfVowel = i
      #puts indexOfVowel
      vowelFound = true
    end
    i = i + 1
  end
  x = 0
  while x < indexOfVowel
    arr.push(arr[x])
    x = x + 1
  end
  arr.push("ay")
  z = 0
  while z < indexOfVowel
    arr.shift
    z = z + 1
  end
end

def handlePhoneme(str, arr)
  indexOfSch = str.index("sch")
  indexOfQu = str.index("qu")
  #puts indexOfSch
  #puts indexOfQu
  if indexOfQu
    arr.delete_at(indexOfQu)
    arr.delete_at(indexOfQu)
    arr.insert(indexOfQu, "qu")
    indexOfSch = nil
  
  elsif indexOfSch
    arr.delete_at(indexOfSch)
    arr.delete_at(indexOfSch)
    arr.delete_at(indexOfSch)
    arr.insert(indexOfSch, "sch")
    indexOfQu = nil
  end
end

def translate(word)
  answerStr = ""
  wordArr = word.split(" ")
  i = 0
  while i < wordArr.length
    letterArr = wordArr[i].split("")
    handlePhoneme(wordArr[i], letterArr)
    # if first letter is vowel
    if letterArr[0].count("aeiou") >= 1 && letterArr[0].length < 2
      vowelFirst(letterArr)
    else
      # if first letter is consonant
      consFirst(letterArr)
    end
    answerStr = answerStr + letterArr.join("")
    answerStr = answerStr + " "
    i = i + 1
  end
  if answerStr.chars.last == " "
    answerStr = answerStr[0...-1]
  end
  return answerStr
  #puts answerStr
end

#translate("the quick brown fox is quick and stuff")
#translate("school")
#translate("quiet")
#translate("square")



