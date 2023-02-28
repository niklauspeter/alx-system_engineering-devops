#!/usr/bin/env ruby
# Prints all the words that start with h, end with n, and have repeted t's in between.
# ./1-repetition_token_0.rb
puts ARGV[0].scan(/hbt+n/).join
