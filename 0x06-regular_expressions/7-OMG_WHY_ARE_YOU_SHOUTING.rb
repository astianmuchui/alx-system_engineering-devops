#!/usr/bin/env ruby

exp_pattern = /[A-Z]/
inp_str = ARGV[0]
matches = inp_str.scan(exp_pattern)
puts matches.join