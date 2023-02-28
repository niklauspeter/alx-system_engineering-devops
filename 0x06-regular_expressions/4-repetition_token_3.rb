#!/usr/bin/env ruby
# Prints all the words containing letters of hbtn with t being optional
# ./1-repetition_token_0.rb
puts ARGV[0].scan(/h+b+t*n).join