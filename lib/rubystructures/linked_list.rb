module RubyStructures
	class LinkedList
		# Public: Create a new instance of LinkedList
		#
		# Examples
		#
		# 	@linked_list = RubyStructures::LinkedList.new
		# 	# => LinkedList
		#
		# Returns a new instance of LinkedList.
		def initialize
			@head = RubyStructures::Node.new(self, nil)
		end

		# Public: Returns the value at the head of the LinkedList.
		#
		# Examples
		#
		# 	@linked_list.head
		# 	# => 42
		#
		# Returns the value held by the Node at the head of the list, otherwise
		# if the list is empty, returns nil.
		def head
			@head.next
		end

		# Public: Checks to see if the LinkedList is empty.
		#
		# Examples
		#
		# 	@linked_list.empty?
		# 	# => false
		#
		# Returns true if the LinkedList is empty, returns false otherwise.
		def empty?
			@head.next == nil
		end

		# Public: Add a value to the beginning of the LinkedList
		#
		# value - Ruby object to be inserted into the LinkedList
		#
		# Examples
		#
		# 	@linked_list.prepend(42)
		# 	# => Node
		#
		# Returns the Node added to the LinkedList.
		def prepend(value)
			element = RubyStructures::Node.new(self, value)
			element.next = @head.next
			@head.next = element
		end

		# Public: Add a value to the end of the LinkedList
		#
		# value - Ruby object to be inserted into the LinkedList
		#
		# Examples
		#
		# 	@linked_list.append(42)
		# 	# => Node
		#
		# Returns the Node added to the LinkedList.
		def append(value)
			if self.empty?
				self.prepend(value)
				return
			end

			element = self.head
			# loop through each element in the LinkedList, until element.next 
			# equals @head, signifying we have reached the end of the list.
			while(element != self.head)
				element = element.next
			end

			new_element = RubyStructures::Node.new(self, value)
			# insert the new element at the end of the LinkedList.
			new_element.next = element.next
			element.next = new_element
		end

		# Public: Find an element by its value and return it.
		#
		# value - Ruby object to be inserted into the LinkedList
		#
		# Examples
		#
		# 	@linked_list.search(42)
		# 	# => 42
		#
		# Returns the value of the element if it is in the LinkedList, returns
		# nil otherwise.
		def search(value)
			return nil if self.empty?
			element = self.head
			while element.value != value
				if element.next.nil?
					return nil
				else
					element = element.next
				end
			end
			element
		end

		# Public: Gets the Node at the head of the LinkedList.
		#
		# Examples
		#
		# 	@linked_list.item_at_head
		# 	# => #<Node: >
		#
		# Returns the Node at the head of the LinkedList.
		def item_at_head
			@head.next
		end

		# Public: Returns the Node at the desired :index.
		#
		# index - the Integer index value of Node to return.
		#
		# Examples
		#
		# 	@linked_list.item_at(42)
		# 	# => #<Node: >
		#
		# Returns a Node located at position :index in the LinkedList.
		def item_at(index)
			element = self.head
			count = 0
			while count < index
				return nil if element.nil?
				element = element.next
				count += 1
			end
			element
		end

		# Public: Finds and removes the first occurrence of a Node with the 
		# desired value.
		#
		# value - the Ruby object value to find and remove from the LinkedList
		#
		# Examples
		#
		# 	@linked_list.remove(42)
		# 	# => #<Node: >
		#
		# Returns the node that was removed from the LinkedList
		def remove(value)
			element = self.head
			previous_element = @head
			while element.value != value
				if element.next.nil?
					return nil
				else
					previous_element = element
					element = element.next
				end
			end

			previous_element.next = element.next
			element
		end

		# Public: Removes the Node at the head of the LinkedList.
		#
		# Examples
		#
		# 	@linked_list.remove_at_head
		# 	# => #<Node: >
		#
		# Returns the Node at the head of the list.
		def remove_at_head
			return nil if self.empty?
			element = self.head
			@head.next = nil || element.next
			element
		end

		# Public: Removes the Node at the tail of the LinkedList.
		#
		# Examples
		#
		# 	@linked_list.remove_at_tail
		# 	# => #<Node: >
		#
		# Returns 
		def remove_at_tail
			return nil if self.empty?
			element = self.head
			previous_element = @head

			until element.next.nil?
				previous_element = element
				element = element.next
			end

			previous_element.next = nil
			element
		end
	end
end