class MaxSlidingWindow

	def read
		@total = gets.chomp
		@n = gets.chomp
		@window = gets.chomp.to_i
	end


	def create_queue
		@queue = []
		@n.split(" ").each{|n| @queue.unshift(n.to_i) }
	end

	def get_max_sliding_window
		@max = []
		@result = ""
		until(@queue.size < @window)
			@max << @queue.last(@window).max
			@queue.pop
		end
		@max.each{|m| @result=@result+m.to_s+" " }
		puts @result
	end

end

maxSlide = MaxSlidingWindow.new
maxSlide.read
maxSlide.create_queue
maxSlide.get_max_sliding_window