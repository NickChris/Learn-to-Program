# Building and sorting an array

words = []
puts "Write some stuff in ('enter' when done):"

while true
	test = gets.chomp
	words.push test
	if test == ''
		break
	end
end
puts words.sort
puts
puts



#Table of Contents, revisited
line_width = 60
chapter = []
title = "Table of Contents"
chapter = [["Getting Started", 1],["Numbers", 9],["Letters", 13]]
ch_num = 1

puts title.center(line_width)

chapter.each do |x|
	ch_title = x[0]
	ch_pg	 = x[1]
	beginning = "Chapter " + ch_num.to_s + ":  " + ch_title
	ending	  = "Page " + ch_pg.to_s

	puts beginning.ljust(line_width/2) + ending.rjust(line_width/2)
	ch_num += 1
end