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
		@array == [] || @array == nil ? true : false
	end

end


