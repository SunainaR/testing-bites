require 'check_codeword'

RSpec.describe "check_codeword method" do
  it 'Returns "Correct! Come in." message if given correct codeword' do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it 'Returns a close message if the codeword has correct first and last letter' do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end

  it 'Returns a wrong message if the codeword is wrong' do
    result = check_codeword("pineapple")
    expect(result).to eq "WRONG!"
  end

  it 'Returns a wrong message if the first letter is correct' do
    result = check_codeword("happy")
    expect(result).to eq "WRONG!"
  end

  it 'Returns a wrong message if the last letter is correct' do
    result = check_codeword("late")
    expect(result).to eq "WRONG!"
  end
  
  it 'Returns a wrong message if the codeword is correct but the letters are the wrong case' do
    result = check_codeword("HORse")
    expect(result).to eq "WRONG!"
  end
end
