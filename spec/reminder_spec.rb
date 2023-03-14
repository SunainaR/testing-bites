require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  it "remind sunny to cuddle the cat" do
    reminder = Reminder.new("Sunny")
    reminder.remind_me_to("Cuddle the cat")
    result = reminder.remind()
    expect(result).to eq "Cuddle the cat, Sunny!"
  end

  # We would typically have a number of these examples.
end