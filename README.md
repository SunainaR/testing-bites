# testing-bites
## RSpec Testing writing process
Write a test for:
* All branches of if statement
* Fringe examples for conditionals e.g. numerical limits
* Each part of conditional e.g. <1> && <2> - write tests for the whole statement, for when only <1> == true and when <2>  == true

## RSpec syntax

```shell
require 'add_five' # We have to require the file with our code in first.

# Then we set up a test suite — a group of tests.
# We use this string to describe the unit of code we're testing
RSpec.describe "add_five method" do

  # Next, we create a single test example.
  # We use the string here to describe what the example is.
  it "adds 5 to 3 to return 8" do
    # We run the method with an example argument 3
    result = add_five(3)

    # And then expect (assert) that in this example it should return 8
    expect(result).to eq 8

    # RSpec will run this example, and if this example doesn't work like you
    # said it would, the test will fail.
  end

  # We can put more test examples here...
end

# But we only have one test suite per file.
```

Alternatively, could use referental transparency for expect statement:

```shell
describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
```

# RSpec for Classes
Testing classes is fundamentally similar to testing methods. However, classes perform a different job to methods. Instead of taking some arguments and giving a return value like a method, classes look after some data (state) with a common group of methods (behaviour).

-> Rather than calling one method and check the return value, our example involves calling a number of methods that exercise the intended behaviour of the class.

Note: Can add bugs to the code to test the tests after they've been written