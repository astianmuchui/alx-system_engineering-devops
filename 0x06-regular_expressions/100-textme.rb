#!/usr/bin/env ruby
# Advanced regular expression

puts ARGV[0].scan(/\[from:([^\]]*)\]\s\[to:([^\]]*)\]\s\[flags:([^\]]*)\]/).join(',')
