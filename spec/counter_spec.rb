require 'counter'

# I can know it's a class here in the spec file, because below uses the class rather than a string which is used for a method
# Note: Write tests for different combinations of methods e.g. calling add no times or multiple times.
RSpec.describe Counter do
  it "Shows me that I've counted to 13 after adding one value" do
    counter = Counter.new
    counter.add(13)
    result = counter.report
    expect(result).to eq "Counted to 13 so far."
  end
  it "Shows me that I've counted to 0" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end
  it "Shows me that I've counted to float 5.5" do
    counter = Counter.new
    counter.add(5.5)
    result = counter.report
    expect(result).to eq "Counted to 5.5 so far."
  end
  it "Shows me that I've counted 18 with multiple values added" do
    counter = Counter.new
    counter.add(10)
    counter.add(3)
    counter.add(5)
    expect(counter.report).to eq "Counted to 18 so far."
  end
end