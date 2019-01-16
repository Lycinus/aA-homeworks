require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) { Dessert.new("cake", 2, "Mary Berry") }
  let(:chef) { double("chef") }


  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(2)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq ([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do 
        new_cake = Dessert.new("cake", 3.5, "Mary Berry")
      end.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      cake.add_ingredient("frosting")
      expect(cake.ingredients).to include("frosting")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      new_cake = cake.dup
      new_cake.mix!
      expect(new_cake.ingredients).to match_array(cake.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect(cake.quantity).to eq(1)
    end
  

    it "raises an error if the amount is greater than the quantity" do
      expect{ cake.eat(3) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Mary Berry the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      cake.make_more
      expect(chef).to have_received(:bake).with(cake)
    end
  end
end
