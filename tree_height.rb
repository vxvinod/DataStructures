class TreeHeight

	class Tree
		attr_accessor :children, :value

		def initialize(v)
			@value = v
			@children = []
		end
	end

	def read
		#puts "Enter Size of n"
		@n = gets.chomp.to_i
		@node = Array.new
		@n.times {|i| @node[i] = Tree.new(i) }

		#puts "Enter the Tree values"
		values = gets.chomp
		construct_tree(values)
	end

	def construct_tree(values)
		values.split(" ").each_with_index do |value, i|
			#puts value
			if(value.to_i == -1)
				@root = i
			else
				@node[value.to_i].children << @node[i]	
			end
			
		end
		# @node.each do |n| 
		# 	puts "value "
		# 	puts n.value
		# 	puts "children"
		# 	n.children.each do |c| 
		# 		puts c.value unless(c == nil)
		# 	end
		# end
	end


	def compute_height()
		#puts "Tree Height "
		height = 0
		queue = []
		queue.unshift(@node[@root])
		while(!queue.empty?) do
			size = queue.size
			# puts "node poped out"
			# puts node.value
			height = height+1
				
				while(size > 0)
					node = queue.pop
					if(!node.children.empty?)
						node.children.each do |child|
							queue.unshift(child) 
						end
					end
					size =size-1
				end
						

		end
		return height


	end

end

th = TreeHeight.new
read = th.read
puts th.compute_height