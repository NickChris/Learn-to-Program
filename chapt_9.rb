# Improved ask method
def ask question 
	while true
	    puts question
	    reply = gets.chomp.downcase
		if reply == 'yes'
			return true
		end
		if reply == 'no'
			return false
		end
	    puts 'Please answer "yes" or "no".'
	end
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?' # Ignore this return value 
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value 
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
puts
puts


#Old-School Roman numerals
def old_roman num
	m_amt = (num / 1000) 
	d_amt = (num % 1000 / 500) 
	c_amt = (num % 500/ 100) 
	l_amt = (num % 100/ 50) 
	x_amt = (num % 50/ 10) 
	v_amt = (num % 10/ 5) 
	i_amt = (num % 5/ 1) 

	numeral = ''
	numeral = numeral + 'M' * m_amt
	numeral = numeral + 'D' * d_amt
	numeral = numeral + 'C' * c_amt
	numeral = numeral + 'L' * l_amt
	numeral = numeral + 'X' * x_amt
	numeral = numeral + 'V' * v_amt
	numeral = numeral + 'I' * i_amt
	numeral
end

puts "Enter in a number from 1 to 3000"
puts old_roman(gets.chomp.to_i)
puts



# "Modern" Roman numerals
def roman_numeral num
	m_amt = (num / 1000) 
	d_amt = (num % 1000 / 500) 
	c_amt = (num % 500/ 100) 
	l_amt = (num % 100/ 50) 
	x_amt = (num % 50/ 10) 
	v_amt = (num % 10/ 5) 
	i_amt = (num % 5/ 1)

	thous_place = (num / 1000) 
	hunds_place = (num % 1000 / 100) 
	tens_place = (num%100/ 10) 
	ones_place = (num% 10 )

	numeral = 'M' * thous_place
	if hunds_place == 9
		numeral = numeral + 'CM'
	elsif hunds_place == 4
		numeral = numeral + 'CD'
	else
		numeral = numeral + 'D' * d_amt
		numeral = numeral + 'C' * c_amt
	end
	if tens_place == 9
		numeral = numeral + 'XC'
	elsif tens_place == 4
		numeral = numeral + 'XL'
	else
		numeral = numeral + 'L' * l_amt
		numeral = numeral + 'X' * x_amt
	end
	if ones_place == 9
		numeral = numeral + 'IX'
	elsif ones_place == 4
		numeral = numeral + 'IV'
	else
		numeral = numeral + 'V' * v_amt
		numeral = numeral + 'I' * i_amt
	end
	numeral
end
puts "Enter a year to see its 'Modern' Roman numeral equivalent"
puts(roman_numeral(gets.chomp.to_i))
