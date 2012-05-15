class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    number = 0
    super unless %w{Bob Frank Bill}.include? person
    3.times do
      number = rand(10) + 1
      puts "#{number}"
    end
    "#{person} got a #{number}"
  end
end

number_of = Roulette.new
puts number_of.bob
puts number_of.frank
