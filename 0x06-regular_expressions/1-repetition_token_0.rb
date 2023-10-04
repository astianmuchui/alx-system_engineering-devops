#!/usr/bin/env ruby
# Match "hbtn, hbttn, hbtttn, hbttttn, hbtttttn"
exp_pattern = /hbt{2,5}n/
inp_str = ARGV[0]
matches = inp_str.scan(exp_pattern)
puts matches.join