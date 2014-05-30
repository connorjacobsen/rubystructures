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

### Stack
RubyStructures::Stack provides a First in, First out stack implementation.

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

## Contributing

1. Fork it ( https://github.com/connorjacobsen/rubystructures/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
