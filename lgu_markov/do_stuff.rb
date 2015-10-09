#!/usr/bin/env ruby
require 'marky_markov'

markov = MarkyMarkov::TemporaryDictionary.new
markov.parse_file "lgu_changes.txt"
20.times do
  puts markov.generate_n_sentences 1
end

#puts markov.generate_n_words 200
markov.clear! # Clear the temporary dictionary.
