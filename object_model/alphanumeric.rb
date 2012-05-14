def to_alphanumeric(s)
  s.gsub /[^\w\s]/, ''
end

require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
  end
end

class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

class StringExtensionsTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end

module MyModule
  MyConstant = 'Outer constant'

  class MyClass
    MyConstant = 'Inner constant'
  end
end

puts MyModule::MyConstant
puts MyModule::MyClass::MyConstant

module M
  def my_method
    'M#my_method()'
  end
end

class C
  include M
end

class D < C
end

d = D.new
d.my_method
D.ancestors

class MyClass
  def testing_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new
obj.testing_self

p self
p self.class
