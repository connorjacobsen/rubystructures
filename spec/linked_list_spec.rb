require 'rubystructures'

describe RubyStructures::LinkedList do
	before(:each) { @linked_list = RubyStructures::LinkedList.new }

	describe "#initialize" do
		it "class should be LinkedList" do
			expect(@linked_list.class).to eql RubyStructures::LinkedList
		end
	end

	describe "#head" do
		context "when the LinkedList is empty" do
			it "head has value of nil" do
				expect(@linked_list.head).to eql nil
			end
		end

		context "when the LinkedList is not empty" do
			before { @linked_list.prepend(42) }
			it "head returns an element" do
				expect(@linked_list.head.class).to eql RubyStructures::Node
			end
		end
	end

	describe "#empty" do
		context "when the LinkedList is empty" do
			it "returns true" do
				expect(@linked_list.empty?).to eql true
			end
		end
		
		context "when the LinkedList is not empty" do
			before { @linked_list.prepend(42) }
			it "returns false" do
				expect(@linked_list.empty?).to eql false
			end
		end
	end

	describe "#prepend" do
		before(:each) { @linked_list.prepend(42) }

		it "empty? returns false" do
			expect(@linked_list.empty?).to eql false
		end

		it "has the correct value" do
			expect(@linked_list.head.value).to eql 42
		end
	end

	describe "#append" do
		context "when the list is empty" do
			it "adds the element to the LinkedList" do
				expect(@linked_list.head).to eql nil
				@linked_list.append(42)
				expect(@linked_list.head.value).to eql 42
			end
		end

		context "when the list is not empty" do
			before { @linked_list.prepend(42) }
			it "adds the element to the LinkedList" do
				@linked_list.append(13)
				expect(@linked_list.head.value).to eql 42
				element = @linked_list.head
				element = element.next
				expect(element.value).to eql 13
			end
		end
	end

	describe "#item_at_head" do
		before { @linked_list.prepend(42) }
		before { @linked_list.prepend(13) }

		it "returns the correct item" do
			element = @linked_list.item_at_head
			expect(element.value).to eql 13
		end
	end

	describe "#item_at" do
		before { @linked_list.prepend(42) }
		before { @linked_list.prepend(7) }
		before { @linked_list.prepend(13) }

		context "item at index zero" do
			it "returns correct value" do
				expect(@linked_list.item_at(0).value).to eql 13
			end
		end

		context "item at index one" do
			it "returns correct value" do
				expect(@linked_list.item_at(1).value).to eql 7
			end
		end

		context "item at index two" do
			it "returns correct value" do
				expect(@linked_list.item_at(2).value).to eql 42
			end
		end

		context "item at index out of range" do
			it "returns nil" do
				expect(@linked_list.item_at(3)).to eql nil
			end

			it "returns nil" do
				expect(@linked_list.item_at(4)).to eql nil
			end
		end
	end

	describe "#search" do

		context "when the list is empty" do
			it "returns nil" do
				expect(@linked_list.search(42)).to eql nil
			end
		end

		context "when the list is not empty" do
			before(:each) { @linked_list.prepend(42) }
			before(:each) { @linked_list.prepend(13) }
			before(:each) { @linked_list.prepend(7) }

			context "when item is at head of the list" do
				it "returns the correct value" do
					expect(@linked_list.search(7).value).to eql 7
				end
			end

			context "when item is in the middle of the list" do
				it "returns the correct value" do
					expect(@linked_list.search(13).value).to eql 13
				end
			end

			context "when item is at the end of the list" do
				it "returns the correct value" do
					expect(@linked_list.search(42).value).to eql 42
				end
			end
		end
	end

	describe "#remove_at_head" do

		context "list is not empty" do
			before(:each) { @linked_list.prepend(42) }

			context "only one Node" do
				it "returns the Node at the head of the list" do
					expect(@linked_list.remove_at_head.value).to eql 42
				end

				it "removes the Node from the list" do
					expect(@linked_list.empty?).to eql false
					@linked_list.remove_at_head
					expect(@linked_list.empty?).to eql true
				end
			end

			context "more than one Node" do
				before(:each) { @linked_list.append(13) }

				it "returns the correct Node" do
					expect(@linked_list.remove_at_head.value).to eql 42
				end

				it "removes the value from the list" do
					@linked_list.remove_at_head
					expect(@linked_list.item_at_head.value).to eql 13
				end
			end
		end

		context "list is empty" do
			it "returns nil" do
				expect(@linked_list.remove_at_head).to eql nil
			end
		end
	end

	describe "#remove_at_tail" do

		context "when the list is empty" do
			it "returns nil" do
				expect(@linked_list.remove_at_tail).to eql nil
			end
		end

		context "when the list is not empty" do
			before(:each) { @linked_list.prepend(42) }

			context "list has one element" do
				it "returns the correct value" do
					expect(@linked_list.remove_at_tail.value).to eql 42
				end

				it "is empty after removal" do
					expect(@linked_list.empty?).to eql false
					@linked_list.remove_at_tail
					expect(@linked_list.empty?).to eql true
				end
			end

			context "list has two or more elements" do
				before(:each) { @linked_list.prepend(13) }

				it "returns the correct value" do
					expect(@linked_list.remove_at_tail.value).to eql 42
				end

				it "Node is removed" do
					@linked_list.remove_at_tail
					element = @linked_list.head
					expect(element.next).to eql nil
				end
			end
		end
	end

	describe "#remove" do
		before(:each) { @linked_list.prepend(42) }
		before(:each) { @linked_list.prepend(7) }
		before(:each) { @linked_list.prepend(13) }

		context "value at index 0" do
			it "returns Node" do
				expect(@linked_list.remove(13).value).to eql 13
			end
		end

		context "value at index 1" do
			it "returns Node" do
				expect(@linked_list.remove(7).value).to eql 7
			end
		end

		context "value at index 2" do
			it "returns Node" do
				expect(@linked_list.remove(42).value).to eql 42
			end
		end

		context "value not in LinkedList" do
			it "returns nil" do
				expect(@linked_list.remove(100)).to eql nil
			end
		end
	end
end