class MyClass
  def method_one
    def method_two
      'Hello!'
    end
  end
end

obj = MyClass.new
# the order matters
obj.method_one
obj.method_two
