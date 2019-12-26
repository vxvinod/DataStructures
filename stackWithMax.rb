class StackWithMax

	def initialize
		@stack = []
		@max = []
	end

	def push(value)
 		if @max.empty?
 			@max << value
 		else
 			@max << value if(value >= @max.last)
 		end
		@stack << value
	end

	def pop
		poppedValue = @stack.pop
		if(@max.last == poppedValue) 
			@max.pop
		end
	end

	def max
		@max.last
	end

end

stack = StackWithMax.new
queries = gets.chomp.to_i
max = []
queries.times do 
	query = gets.chomp

	if query.match("push")
		stack.push(query.split(" ").last.to_i)
	elsif query.match("pop")
		stack.pop
	elsif query.match("max")
		max << stack.max 
	end
end

max.each {|m| puts m }