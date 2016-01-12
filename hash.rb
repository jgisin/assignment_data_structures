require_relative 'linkedlist'

class HashTable
	def initialize
		@buckets = []
		@buckets_index = []
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
		if !@buckets_index.include?(hash(word))
			@buckets_index << hash(word)
		end
	end

	def render_list
		counter_bucket = 0
		# counter_linkedlist = 0
		buckets_index_values = @buckets_index[counter_bucket]
		 while counter_bucket < @buckets.length
			# puts @buckets
			@buckets[buckets_index_values].print_list
			counter_bucket += 1
			# until @buckets[buckets_index_values] < buckets_index_values.length
				#@buckets[buckets_index_values[counter_linkedlist]].next.nil?
				#counter_linkedlist < (@buckets[@buckets_index[counter_bucket]].length - 1)
				# puts @buckets[@buckets_index[counter_linkedlist]]
				# counter_linkedlist += 1
			# end
		end
	end

end

hash = HashTable.new
hash.insert("f")

hash.insert("l")
hash.render_list
hash.insert("bed")
hash.render_list