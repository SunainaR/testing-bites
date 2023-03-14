require 'counter'

# I can know it's a class here in the spec file, because below uses the class rather than a string which is used for a method
RSpec.describe Counter do
  it "Shows me that I've counted to 13" do
    counter = Counter.new
    counter.add(13)
    result = counter.report
    expect(result).to eq "Counted to 13 so far."
  end
  it "Shows me that I've counted to 0" do
    counter = Counter.new
    counter.add(0)
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
  it "Shows me that I've counted to 5.5" do
    counter = Counter.new
    counter.add(5.5)
    result = counter.report
    expect(result).to eq "Counted to 5.5 so far."
  end
end