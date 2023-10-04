#!/usr/bin/env ruby
# Repetition Token #2
exp_pattern = /hbt+n/
inp_str = ARGV[0]
matches = inp_str.scan(exp_pattern)
puts matches.join
