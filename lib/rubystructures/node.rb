module RubyStructures
	class Node
		attr_accessor :value
		attr_accessor :next
		attr_reader :list

		# Internal: Creates a new instance of Node.
		#
		# list - instance of LinkedList to which the Node belongs.
		# value - the value to be stored in the Node.
		#
		# Examples
		#
		# 	@node = RubyStructures::Node.new
		#
		# Returns a new instance of Node.
		def initialize(list, value)
			@list = list
			@value = value
		end
	end
end