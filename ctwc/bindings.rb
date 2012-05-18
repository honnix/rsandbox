class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method
eval '@x', b

class AnotherClass
  def my_method
    eval 'self', TOPLEVEL_BINDING
  end
end

AnotherClass.new.my_method
