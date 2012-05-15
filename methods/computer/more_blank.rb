class Computer
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|method_missing|response_to\?/
  end
end
