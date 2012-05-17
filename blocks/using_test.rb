$: << File.dirname(__FILE__)

require 'test/unit'
require 'using'

class TestUsing < Test::Unit::TestCase
  class Resource
    def dispose
      @dispose = true
    end

    def disposed?
      @dispose
    end
  end

  def test_disposes_of_resources
    r = Resource.new
    using(r) {}
    assert r.disposed?
  end

  def test_disposes_of_resources_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) do
      using(r) { raise Exception }
    end
  end
end
