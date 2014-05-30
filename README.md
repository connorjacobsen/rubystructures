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

## Contributing

1. Fork it ( https://github.com/connorjacobsen/rubystructures/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
