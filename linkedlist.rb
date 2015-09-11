class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

class Stack
	attr_reader :data

	def initialize
		@node = nil
	end

	# Push a value onto the stack
	def push(value)                     # next_node from previous call
		@node = LinkedListNode.new(value, @node)
	end

	# Pop an item off the stack.
	# Remove the last item that was pushed onto the
	# stack and return the value to the user
	def pop
		# raise "Stack is empty" if is_empty?

		value = @node.value
	  @node = @node.next_node
	  value

	end

	def is_empty?
		@node.nil?
	end
end

def print_values(list_node)
	print "#{list_node.value} --> "
	if list_node.next_node.nil?
		print "nil\n"
		return
	else
		print_values(list_node.next_node)
	end
end

def reverse_list(list)
	stack = Stack.new

	while list
		stack.push(list.value)
		list = list.next_node
	end


	while stack
		 print "#{stack.pop} --> "
	end


end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------------"

revlist = reverse_list(node3)

print_values(revlist)

