#!/usr/bin/env ruby
exp_pattern = /^h.n$/
inp_str = ARGV[0]
matches = inp_str.scan(exp_pattern)
puts matches.join
