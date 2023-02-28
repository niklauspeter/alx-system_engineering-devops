#!/usr/bin/env ruby
#regular expression matches a 1-digit phone number
#puts ARGV[0].scan(/\d{3}[ -]?\d{3}[ -]?\d{4}/).join
puts ARGV[0].scan(/^\d{10,10}$/).join
