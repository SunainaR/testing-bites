require 'present'

RSpec.describe Present do
  it "Succesfully wrapping and unwrapping contents" do
    present = Present.new
    present.wrap("Cleo")
    expect(present.unwrap).to eq "Cleo"
  end

  it "Fails if wrapping we've already wrapped" do
    present = Present.new
    present.wrap("Ninya")
    expect { present.wrap("Dog") }.to raise_error "A contents has already been wrapped."
  end

  it "Fails if wrapping we've already wrapped" do
    present = Present.new
    present.wrap("Ninya")
    expect { present.wrap("Ninya") }.to raise_error "A contents has already been wrapped."
  end

  it "Fails if unwrap without wrapping" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped." 
  end
end