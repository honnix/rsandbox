class Computer
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|method_missing|response_to\?/
  end

  def initialize(name, *args)
    super if !response_to? name
    info = @data_source.send("get_#{name}_info", args[0])
    price = @data_source.send("get_#{name}_price", args[0])
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    if price >= 100
      "* #{result}"
    else
      result
    end
  end

  def response_to?(method)
    @data_source.response_to? "get_#{method}_info" || super
  end
end
