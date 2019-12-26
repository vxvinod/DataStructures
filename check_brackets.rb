#require "byebug"
class CheckBrackets
	def self.find_mismatch(input)
		stack = []
		pointer = 0
		index = []
		pairBracket = {"(" => ")", "{" => "}", "[" => "]" }
		input.chars.each_with_index do |char, i|
			if(pairBracket.keys.include? char)
				index << i+1
				stack << char
			elsif(pairBracket.values.include? char)
				if(char == pairBracket[stack.pop]) 
					index.pop 
				else
					return i+1
				end
				#return i+1 unless char == pairBracket[stack.pop]
			else
				next	
			end
		end
		return (stack.empty?) ? "Success" : index.last
	end
end
input = gets.chomp
puts CheckBrackets.find_mismatch(input)