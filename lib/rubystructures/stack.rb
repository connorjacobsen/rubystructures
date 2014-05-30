module RubyStructures
	class Stack
		# Public: Creates a new instance of Stack with default values.
		#
		# Examples
		# 
		# 	Stack.new
		#
		# Returns a new instance of RubyStuctures::Stack.
		def initialize
			@storage = Array.new
		end

		# Public: Returns the Integer current size of the stack.
		# We can rely on the Ruby Array to provide us with the correct stack
		# size, which allows us to not have a :size instance variable.
		#
		# Examples
		#
		# 	@stack.size
		# 	# => 42
		#
		# Returns the size of the stack.
		def size
			@storage.size
		end

		# Public: Adds value to the Stack.
		#
		# value - Ruby data type, can be of any class type.
		#
		# Examples
		# 
		# 	@stack.push(42)
		# 	# => true
		#
		# Returns true if the value was successfully added to the stack.
		def push(value)
			if @storage << value
				true
			else
				false
			end
		end

		# Public: Removes and returns the value from the top of the stack.
		#
		# Examples
		# 
		# 	# If the stack has :size > 1, return the top value.
		# 	@stack.pop
		# 	# => 42
		#
		# 	# If the stack is empty, returns nil.
		# 	@stack.pop
		# 	# => nil
		#
		# Returns the value at the top of the stack, or nil if the stack is empty.
		def pop
			@storage.pop
		end

		# Public: Peek at the value on the top of the stack without removing it.
		#
		# Examples
		#
		# 	@stack.top
		# 	# => 42
		#
		# 	# If the stack is empty, returns nil.
		# 	@stack.top
		# 	# => nil
		#
		# Returns the value at the stop of the Stack, but does not pop the
		# value off the stack. Returns nil if the Stack is empty.
		def top
			@storage.last
		end

		# Public: Boolean check to see if the stack is empty.
		#
		# Examples
		# 
		# 	@stack.empty?
		# 	# => true
		# 
		# Returns true if the Stack is empty, false otherwise.
		def empty?
			@storage.size == 0
		end
	end
end