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