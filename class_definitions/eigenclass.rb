class Object
  def eigenclass
    class << self
      self
    end
  end
end

'abc'.eigenclass.superclass
