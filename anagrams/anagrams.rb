def first_anagram?(word1, word2)
  word_arr = word1.chars
  permutations = word_arr.permutation.to_a
  anagrams = permutations.map { |perm| perm.join('') }
  return anagrams.include?(word2)
end
