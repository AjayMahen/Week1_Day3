#just count only
def count_letters(input_s)
  chars_count = Hash.new(0)
    input_s.chars {|letter| chars_count[letter] +=1 if letter != " " }
  chars_count
end


def count_letters_and_positions(str)
	output = {}
	# for each word
	str.each_char.with_index do |letter, index| 
		if output[letter]
			output[letter][:count] += 1
			output[letter][:indices] << index
		else
			output[letter] = {
				count: 1,
				indices: [ index ]
			}
		end
	end
	output
end

puts count_letters_and_positions("lighthouse in the house...")
puts count_letters("lighthouse in the house...")