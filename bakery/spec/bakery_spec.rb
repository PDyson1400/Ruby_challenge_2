require_relative '../lib/bakery.rb'

RSpec.describe Cake do
    describe "#set flavour" do
        it "sets the flavour of the cake" do
            cake = Cake.new
            cake.set_flavour("Vanilla")
            expect(cake.flavour).to eq "Vanilla"
        end
    end
    # next test
    describe "#take slice" do
        it "takes a slice out of the cake and leaves the remainder" do
            cake = Cake.new
            cake.take_slice(40)
            expect(cake.size).to eq 60
        end
    end
end
