module MyModule
  def my_method
    'hello'
  end
end

class MyClass
  class << self
    include MyModule    
  end
end

MyClass.my_method

obj = Object.new
class << obj
  include MyModule
end

obj.my_method
obj.singleton_methods

obj = Object.new
obj.extend MyModule
obj.my_method

class MyClass1
  extend MyModule
end

MyClass1.my_method
