require 'rubystructures'

describe RubyStructures::Stack do
	stack = RubyStructures::Stack.new
	subject { stack }

	# Attributes
	it { should respond_to :size }

	# Methods
	describe "#initialize" do
		before { @stack = RubyStructures::Stack.new }
		it "creates a Stack object" do
			expect(@stack.class).to eql RubyStructures::Stack
		end

		it "has size zero upon creation" do
			expect(@stack.size).to eql 0
		end
	end

	describe "#push" do
		before { @stack = RubyStructures::Stack.new }
		it "adds an object to the stack" do
			expect(@stack.size).to eql 0
			@stack.push(42)
			expect(@stack.size).to eql 1
		end		
	end

	describe "#pop" do
		before { @stack = RubyStructures::Stack.new }
		context "stack is empty" do
			it "returns nil" do
				expect(@stack.pop).to eql nil
			end
		end

		context "stack is not empty" do
			before { @stack.push(42) }
			it "returns and removes correct value" do
				expect(@stack.pop).to eql 42
				expect(@stack.size).to eql 0
			end
		end
	end

	describe "#top" do
		before do
			@stack = RubyStructures::Stack.new
			@stack.push(42)
			@stack.push(13)
		end

		it "returns the value of the top item" do
			expect(@stack.top).to eql 13
		end

		it "doesn't remove any items" do
			@stack.top
			expect(@stack.size).to eql 2
		end
	end

	describe "#empty?" do
		before(:each) { @stack = RubyStructures::Stack.new }

		context "when stack is empty" do
			it "return true" do
				expect(@stack.empty?).to eql true
			end
		end

		context "when stack is not empty" do
			before { @stack.push(42) }
			it "returns false" do
				expect(@stack.empty?).to eql false
			end
		end
	end
end