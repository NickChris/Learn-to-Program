#99 Bottles of Beer on the Wall
bottles = 99

while bottles > 0
	puts bottles.to_s + " bottles of beer on the wall."
	puts bottles.to_s + " bottles of beer."
	puts "Take one down pass it around."
	bottles -=1
	puts bottles.to_s + " bottles of beer on the wall."
	puts
	if bottles == 1
		puts bottles.to_s + " bottle of beer on the wall."
		puts "The last bottle of beer."
		puts "Take it down pass it around."
		puts "No more bottles of beer on the wall."
		puts
		break
	end
end

#Deaf grandma
puts "Say something to your grandma..."
request = gets.chomp
while request != 'BYE'
	if request != request.upcase 
		puts "HUH?!  SPEAK UP, SONNY!"
		request = gets.chomp
	elsif request == request.upcase
		puts "NO, I HAVEN'T DONE THAT SINCE " + rand(1930..1951).to_s + "!"
		request = gets.chomp
	end
end
puts

#Deaf grandma extended
puts "Say something to your grandma..."
request = gets.chomp
bye = 0
while true
	if request == 'BYE'
		bye += 1
	else
		bye = 0
	end
	
	if bye >= 3
		puts "SEE YA KIDDO!"
		break
	end

	if request != request.upcase 
		puts "HUH?!  SPEAK UP, SONNY!"
		request = gets.chomp
	elsif request == request.upcase
		puts "NO, I HAVEN'T DONE THAT SINCE " + rand(1930..1951).to_s + "!"
		request = gets.chomp
	end
end
puts


#Leap Year
puts "We will calculate the number of leap years between two dates."
puts "Enter the starting year."
start_year = gets.chomp.to_i
puts "Enter the ending year."
end_year = gets.chomp.to_i
year = start_year
puts
puts "These are the leap years between #{start_year} and #{end_year}:"

while year <= end_year
	if year % 4 == 0
		if year % 100 != 0 || year % 400 == 0
			puts year 
		end
	end
	year += 1
end