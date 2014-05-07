require "pig_latin/version"

module PigLatin

  def self.check_conditions(word)
    if /\A[aeiou]/.match(word)
      check_vowel(word)
    elsif /\A[bcdfghjklmnpqrstvwxz]/.match(word)
      check_consonant(word)
    elsif /\Ay/.match(word)
      check_y(word)
    end
  end

  def self.check_vowel(word)
    pl_word = word + "way"
    return pl_word
  end

  def self.check_consonant(word)
    pl_word = /\A[aeiouy]/.match(word.slice(1..-1)) ?  word.slice(1..-1) + word.slice(0) + "ay" : word.slice(2..-1) + word.slice(0..1) + "ay"
    return pl_word
  end

  def self.check_y (word)
    pl_word = word.slice(1..-1) + word.slice(0) + "ay"
    return pl_word
  end

end
