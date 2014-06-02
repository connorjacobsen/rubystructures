# RubyStructures

Simple, useful data structures written in pure Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'rubystructures'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubystructures

## Usage

### Stacks
RubyStructures::Stack provides a First in, Last out stack implementation.

Create a new Stack:
```ruby
require 'rubystructures'

@stack = RubyStructures::Stack.new
```

**Note: by requiring `rubystructures/stack` instead, you can drop the `RubyStructures::` prefix.**

Add a value to the Stack:
```ruby
@stack.push(42)
# => true
```

Pop a value off the Stack:
```ruby
@stack.pop
# => 42
```

Check the size of the Stack:
```ruby
@stack.size
# => 1
```

Take a peek at the value on the top of the Stack:
```ruby
@stack.top
# => 42
```

Is the Stack empty?
```ruby
@stack.empty?
# => false
```

### Queues

`RubyStructures::Queue` implements a First in, First out queue.

Create a new Queue:
```ruby
require 'rubystructures'

@queue = RubyStructures::Queue.new
```

Push a value onto the Queue:
```ruby
@queue.push(42)
# => true
```

You can also use `enqueue` as an alias for push:
```ruby
@queue.enqueue(42)
# => true
```

Pop a value off the Queue:
```ruby
@queue.pop
# => 42
```

You can also use `dequeue` as an alias for pop:
```ruby
@queue.dequeue
# => 42
```

Take a peek at the values at the front of back of the Queue without removing them:
```ruby
@queue.front
# => 42

@queue.back
# => 7
```

Get the size of the Queue:
```ruby
@queue.size
# => 4
```

Check whether or not the Queue is empty:
```ruby
@queue.empty?
# => false
```

### LinkedLists

Create a new LinkedList:
```ruby
require 'rubystructures/linked_list'

@linked_list = RubyStructures::LinkedList.new
```

Get the Node at the head of the LinkedList:
```ruby
@linked_list.head
# => #<RubyStructures::Node>
```

Each `RubyStructures::Node` contains a Ruby object stored as its `:value`. Get the value stored by the `RubyStructures::Node` at the head of the LinkedList:
```ruby
@linked_list.head.value
# => 42

# Or, if the LinkedList is empty, returns nil.
@linked_list.head.value
# => nil
```

Check if the LinkedList is empty:
```ruby
@linked_list.empty?
# => false
```

Insert a Node at the beginning of the LinkedList:
```ruby
@linked_list.prepend(42)
```

Insert a node at the end of the LinkedList:
```ruby
@linked_list.append(42)
```

Search for a value in the LinkedList, and if found, return its Node:
```ruby
@linked_list.search(42)
# => #<RubyStructures::Node>

# If the item is not found, it returns nil:
@linked_list.search(57)
# => nil
```

Get the Node stored at the head of the LinkedList:
```ruby
@linked_list.item_at_head
# => #<RubyStructures::Node>
```

Or at the end of the LinkedList:
```ruby
@linked_list.item_at_tail
# => #<RubyStructures::Node>
```

Or get the Node stored at any `index` in the LinkedList:
```ruby
@linked_list.item_at(5)
# => #<RubyStructures::Node>
```

*Note: All three `item_at` methods return `nil` when trying to access a location in the LinkedList that does not exist. This occurs if the list is empty, the index is out of range, etc.*

Just like we can get the Node from the head, tail, or anywhere in between, we can also delete any of those Nodes. When we remove a Node from the list, that Node is returned by the removal function:
```ruby
# from the beginning
@linked_list.remove_at_head
# => #<RubyStructures::Node>

# from the end
@linked_list.remove_at_tail
# => #<RubyStructures::Node>

# of anywhere in between
@linked_list.remove_at(5)
# => #<RubyStructures::Node>

# Trying to delete a nonexistent Node results in nil being returned
```

### More RubyStructures coming later

## Contributing

1. Fork it ( https://github.com/connorjacobsen/rubystructures/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
