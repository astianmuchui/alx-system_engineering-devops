#!/usr/bin/env ruby
#  Ruby script that accepts one argument and pass it to a regular expression matching method
#  The regular expression must match school

puts ARGV[0].scan(/Scho.l/).join
