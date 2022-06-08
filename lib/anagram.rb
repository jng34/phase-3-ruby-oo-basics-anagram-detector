class Anagram
    attr_accessor :name

    def initialize(word)
        @name = word
    end

    def match(array_words)
        # word_chars = word.chars.sort {|a,b| a<=>b}
        # words_array = array_words.map{|word| word.chars.sort{|word1, word2| word1 <=> word2}}
        # words_array.find {|word| word == words.chars}]
        array_words.filter {|word| word.chars.sort == @name.chars.sort}
    end

end

apple = Anagram.new('apple')
puts apple.name
puts apple.match(%w[the big ape])