def adiff(wordlist1,wordlist2)
  list = File.open("#{wordlist1}")
  word_array1 = []
  list.each do |word|
    word_array1 << word
  end
  list = File.open("#{wordlist2}")
  word_array2 = []
  list.each do |word|
    word_array2 << word
  end


  f = File.new("#{wordlist1}-#{wordlist2}", "w")
  (word_array1 - word_array2).each do |line|
    f << line
  end
  f.close
end