class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  self
  @v
end

v = 2
obj.instance_eval { @v = v }
obj.instance_eval { @v }

MyClass.new.instance_exec(3) { |arg| (@v + @v) * arg }
