class Stack

attr_accessor :array

	@@position = 0
	
	def initialize
		@array = []
	end

	def push(data)
		@array[@array.length] = data
	end

	def pop
		@array -= [@array[@array.length - 1]]
	end

	def peek
		@array[@@position]
	end

	def next
		@@position += 1
	end

	def empty?
		if @array == [] || @array == nil
			return true
		else
			return false
		end
	end

end


