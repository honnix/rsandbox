class Fixnum
  alias :old_plus :+

  def +(value)
    self.old_plus(value).old_plus(1)
  end
end

require 'test/unit'

class BrokenMathTest < Test::Unit::TestCase
  def test_math_is_broken
    assert_equal 3, 1 + 1
  end
end
