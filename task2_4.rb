
alf = ('a'...'z').to_a
vowel = "aiou"
hash = {}

  for i in 0..vowel.length - 1
    hash[vowel[i]] = alf.index(vowel[i])
  end

puts hash

