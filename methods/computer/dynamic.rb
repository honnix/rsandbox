class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.to_s.capitalize}: #{info} ($#{price})"
      if price >= 100
        "* #{result}"
      else
        result
      end
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end
