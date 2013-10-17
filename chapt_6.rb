#Angry Boss
puts "Huh? What do you want now?!"
want = gets.chomp
puts "WHAT?! WHAT DO YOU MEAN \"" + want.to_s.upcase + "\"?!?"
puts "YOU DONT DESERVE ANYTHING. I TAKE THAT BACK, YOU'RE FIRED!!"
puts

#Table of Contents
line_width = 60
toc = ("Table of Contents".center(line_width))
ch_1 = "Chapter 1:  Getting Started".ljust(line_width/2) 	+ "page   1".rjust(line_width/2)
ch_2 = "Chapter 2:  Numbers".ljust(line_width/2) 			+ "page   9".rjust(line_width/2)
ch_3 = "Chapter 3:  Letters".ljust(line_width/2) 			+ "page  13".rjust(line_width/2)
puts
puts
puts toc
puts ch_1
puts ch_2
puts ch_3