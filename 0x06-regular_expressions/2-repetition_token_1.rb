#!/usr/bin/env ruby
# Prints all the words that start with h, has an optional b in between and ends with tn, .
# ./1-repetition_token_0.rb
puts ARGV[0].scan(/hb?tn/).join
