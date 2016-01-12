class Queue

attr_accessor :array

  @@position = 0
  
  def initialize
    @array = []
  end

  def enqueue(data)
    @array[@array.length] = data
  end

  def dequeue
    @array -= [@array[0]]
  end

  def peek
 		if @@position % 2 == 0
 			@array[0]
 		else
    	@array[@array.length - 1]
    end
  end

  def next
    @@position += 1
  end

  def empty?
    @array == [] || @array == nil ? true : false
  end

end

q = Queue.new
q.enqueue("a")
q.enqueue("b")
q.enqueue("c")
q.enqueue("d")
print q.array
q.dequeue
print q.array

print q.peek
q.next
print q.peek