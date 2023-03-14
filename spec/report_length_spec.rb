require 'report_length'

RSpec.describe "report_length method" do
  it 'returns the length of "animal"' do
    result = report_length("animal")
    expect(result).to eq "This string was 6 characters long."
  end
  it "returns 0 if empty string" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end
  it 'returns length of "two words"' do
    result = report_length("two words")
    expect(result).to eq "This string was 9 characters long."
  end
  it 'returns length of integer as string "865"' do
    result = report_length("865")
    expect(result).to eq "This string was 3 characters long."
  end
  it 'returns length of an array [6,5,9]' do
    result = report_length([6,5,9])
  expect(result).to eq "This string was 3 characters long."
  end
end