require_relative 'linkedlist'
require 'byebug'

class HashTable
	def initialize
		@buckets = []
	end

	def hash(word)
		index = word[0].ord - 97
	end

	def insert(word)
		if @buckets[hash(word)].nil?
			@buckets[hash(word)] = LinkedList.new
			@buckets[hash(word)].add_first_node(word)
		else
			@buckets[hash(word)].add_node(word)
		end
	end

	def render_list
		counter_bucket = 0

		while counter_bucket < @buckets.length

      if !@buckets[counter_bucket].nil?
        print "Bucket: #{counter_bucket} "
  			@buckets[counter_bucket].print_list
      end
			counter_bucket += 1

		end
	end

  def define(word)
    #if definition is not found
      #puts "Not Found"
    #else 
      #puts definition

      #node will have :key, :value, :next

      #word will be :key
      #definition will be :value


  end

end

hash = HashTable.new
hash.insert("f")
hash.insert("l")
hash.insert("bed")
hash.insert("bob")
hash.render_list