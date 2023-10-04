#!/usr/bin/env ruby
# Repetition Token #1
exp_pattern = /hb?tn/
inp_str = ARGV[0]
matches = inp_str.scan(exp_pattern)
puts matches.join
