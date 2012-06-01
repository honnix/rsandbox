require 'rspec/expectations'

$: << File.dirname(__FILE__) + '/../../lib'

require 'calculator'

Before do
  @calculator = Calculator.new
end

Given /I have entered (.*) into the calculator/ do |n|
  @calculator.push(n.to_i)
end

When /^I press (.*)$/ do |op|
  @result = @calculator.send op
end

Then /^the result should be (\d+) on the screen$/ do |result|
  @result.should == result.to_f
end
