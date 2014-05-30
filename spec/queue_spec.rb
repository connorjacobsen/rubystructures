require 'rubystructures'

describe RubyStructures::Queue do
	queue = RubyStructures::Queue.new
	subject { queue }

	it { should respond_to :size }

	# Methods
	describe "#initialize" do
		before(:each) { @queue = RubyStructures::Queue.new }

		it "creates a Queue object" do
			expect(@queue.class).to eql RubyStructures::Queue
		end

		it "has :size zero upon creation" do
			expect(@queue.size).to eql 0
		end
	end

	describe "#push" do
		before { @queue = RubyStructures::Queue.new }
		it "add an object to the queue" do
			expect(@queue.size).to eql 0
			@queue.push(42)
			expect(@queue.size).to eql 1
		end
	end

	describe "#pop" do
		before(:each) do
			@queue = RubyStructures::Queue.new
			@queue.push(42)
		end

		it "returns the correct value" do
			expect(@queue.pop).to eql 42
		end

		it "has the correct queue size" do
			expect(@queue.size).to eql 1
			@queue.pop
			expect(@queue.size).to eql 0
		end
	end

	describe "#size" do
		before(:each) do
			@queue = RubyStructures::Queue.new
		end

		it "returns 0 when Queue is empty" do
			expect(@queue.size).to eql 0
		end

		it "returns correct Queue size" do
			@queue.push(42)
			expect(@queue.size).to eql 1
		end
	end

	describe "#front" do
		before(:each) do
			@queue = RubyStructures::Queue.new
			@queue.push(42)
			@queue.push(13)
		end

		it "returns the correct value" do
			expect(@queue.size).to eql 2
			expect(@queue.front).to eql 42
			expect(@queue.size).to eql 2
		end
	end

	describe "#back" do
		before(:each) do
			@queue = RubyStructures::Queue.new
			@queue.push(42)
			@queue.push(13)
		end

		it "returns the correct value" do
			expect(@queue.size).to eql 2
			expect(@queue.back).to eql 13
			expect(@queue.size).to eql 2
		end
	end

	describe "#empty?" do
		before { @queue = RubyStructures::Queue.new }

		it "returns true when empty" do
			expect(@queue.empty?).to eql true
		end

		it "returns false when not empty" do
			@queue.push(42)
			expect(@queue.empty?).to eql false
		end
	end

	describe "#enqueue" do
		before { @queue = RubyStructures::Queue.new }

		it "behaves like push" do
			expect(@queue.size).to eql 0
			@queue.enqueue(42)
			expect(@queue.size).to eql 1
		end
	end

	describe "#dequeue" do
		before { @queue = RubyStructures::Queue.new }

		it "behaves like pop" do
			@queue.push(42)
			expect(@queue.size).to eql 1
			expect(@queue.dequeue).to eql 42
			expect(@queue.size).to eql 0
		end
	end
end