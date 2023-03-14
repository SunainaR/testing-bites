require 'gratitudes'

RSpec.describe Gratitudes do
    it "Initial state" do
      list = Gratitudes.new
      expect(list.format).to eq "Be grateful for: "
    end

    it "Add a string" do
      list = Gratitudes.new
      result = list.add("My cats")
      expect(result).to eq ["My cats"]
    end
    
    it "Add multiple strings" do
      list = Gratitudes.new
      list.add("Food")
      list.add("Shelter")
      list.add("Cat Cuddles")
      expect(list.format).to eq "Be grateful for: Food, Shelter, Cat Cuddles"
    end
end


