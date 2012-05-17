s1, s2 = 'abc', 'def'

s1.instance_eval do
  def swoosh!
    reverse
  end
end

s1.swoosh!
s2.respond_to? :swoosh!
