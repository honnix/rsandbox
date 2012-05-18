module MyMixin
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def x
      'x()'
    end
  end
end

class MyClass
  include MyMixin
end

MyClass.x

module YourMixin
  def self.included(base)
    base.extend(self)
  end

  def x
    'x()'
  end
end

class YourClass
  include YourMixin
end

YourClass.x
YourClass.new.x
