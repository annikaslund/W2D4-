# O(n!)
def first_anagram?(word1, word2)
  word_arr = word1.chars
  permutations = word_arr.permutation.to_a
  anagrams = permutations.map { |perm| perm.join('') }
  return anagrams.include?(word2)
end

# O(n)
def second_anagram?(word1, word2)
  return false if word1.length != word2.length
  word2 = word2.chars

  word1.chars.each do |char|
    idx = word2.find_index(char)
    word2.delete_at(idx)
  end

  word2.empty?
end

#
def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end
