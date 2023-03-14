require 'greet'

RSpec.describe "greet method" do
  it "returns string Hello, Ninya!" do
    result = greet("Ninya")
    expect(result).to eq "Hello, Ninya!"
  end


end