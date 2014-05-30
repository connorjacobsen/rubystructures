module RubyStructures
	class Queue
		# Public: Creates a new instance of Queue.
		#
		# Examples
		#
		# 	@queue = Queue.new
		# 	# => Queue
		#
		# Returns a new instance of Queue.
		def initialize
			@storage = []
		end

		# Public: Returns the size of the Queue.
		#
		# Examples
		#
		# 	@queue.size
		# 	# => 1
		#
		# Returns the Integer size of the Queue.
		def size
			@storage.size
		end

		# Public: Adds a value to the Queue.
		#
		# value - Ruby data type, can be of any class type.
		#
		# Examples
		#
		# 	@queue.push(42)
		# 	# => true
		#
		# Returns true if the value is successfully added to the Queue; returns
		# false otherwise.
		def push(value)
			if @storage.insert(0, value)
				true
			else
				false
			end
		end

		# Public: Returns and removes the next item in the Queue.
		#
		# Examples
		#
		# 	@queue.pop
		# 	# => 42
		#
		# Returns the next value to be served by the Queue, unless
		# the Queue is empty, then returns nil.
		def pop
			@storage.pop
		end

		# Public: Returns the next value to be served by the Queue without
		# removing the value from the Queue.
		#
		# Examples
		#
		# 	@queue.front
		# 	# => 42
		#
		# Returns the value of the next item to be served in the Queue.
		def front
			@storage.last
		end

		# Public: Returns the last value added to the Queue.
		#
		# Examples
		#
		# 	@queue.back
		# 	# => 42
		#
		# Returns the value at the end of the Queue, which would be served last.
		def back
			@storage.first
		end

		# Public: Checks if whether or not the Queue is empty.
		#
		# Examples
		#
		# 	@queue.empty?
		# 	# => true
		#
		# Returns true if the Queue is empty; false otherwise.
		def empty?
			@storage.size == 0
		end

		# Alias for Queue.push(value)
		#
		# Examples
		#
		# 	@queue.push(42)
		# 	# => true
		def enqueue(value)
			self.push value
		end

		# Alias for Queue.pop
		#
		# Examples
		#
		# 	@queue.dequeue
		# 	# => 42
		def dequeue
			self.pop
		end
	end
end