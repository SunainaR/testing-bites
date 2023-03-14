require 'string_builder'

RSpec.describe StringBuilder do

  context "Initially" do
    it "Show the initial empty string" do
      string = StringBuilder.new
      expect(string.output).to eq ""
    end
    it "Show the size of the initial empty string" do
      string = StringBuilder.new
      expect(string.size).to eq 0
    end
  end
=begin
This example is useful for working out tests, but can be removed later because the multi-string tests cover the scenario below. 
i.e. There isn't a scenario where below would pass and multi-string would fail and vice versa.
  it 'Add a string "woof"' do
    string = StringBuilder.new
    string.add("woof")
    expect(string.output).to eq "woof"
  end
=end

  context "Given many additions to the string" do
    it 'Add multiple strings then output' do
      string = StringBuilder.new
      string.add("dogs ")
      string.add("go ")
      string.add("woof!")
      expect(string.output).to eq "dogs go woof!"
    end
    it "check the size of multi-word string" do
      string = StringBuilder.new
      string.add("Ninya ")
      string.add("meows")
      expect(string.size).to eq 11
    end
  end
end