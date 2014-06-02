require 'rubystructures'

describe RubyStructures::Node do
	describe "#initialize" do
		before { @node = RubyStructures::Node.new(1, 42) }

		it "has correct list" do
			expect(@node.list).to eql 1
		end

		it "has correct value" do
			expect(@node.value).to eql 42
		end
	end
end