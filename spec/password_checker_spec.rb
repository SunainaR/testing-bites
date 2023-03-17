require 'password_checker'

RSpec.describe PasswordChecker do
  xit "Password length is 9 characters" do
    password = PasswordChecker.new
    result = password.check("Elephants")
    expect(result).to eq true
  end

  xit "Password length is 8 characters" do
    password = PasswordChecker.new
    result = password.check("12345678")
    expect(result).to eq true
  end

  xit "Password length is less than 8 characters" do
    password = PasswordChecker.new
    expect { password.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "Password length is no character" do
    password = PasswordChecker.new
    expect { password.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end
end