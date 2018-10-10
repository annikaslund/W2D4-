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

# O(n log n) ?
def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def fourth_anagram?(word1, word2)
  word1_hash = Hash.new(0)
  word2_hash = Hash.new(0)

  word1.chars.each do |char|
    word1_hash[char] += 1
  end

  word2.chars.each do |char|
    word2_hash[char] += 1
  end

  word1_hash.each do |k, v|
    return false unless word2_hash.include?(k) && word1_hash[k] == word2_hash[k]
  end
  true
end
