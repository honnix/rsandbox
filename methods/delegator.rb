require 'delegate'

class Assistant
  def initialize(name)
    @name = name
  end

  def read_email
    puts "(#{@name}) It's mostly spam."
  end

  def check_schedule
    puts "(#{@name}) You have a meeting today."
  end
end

class Manager < DelegateClass(Assistant)
  def initialize(assistant)
    super(assistant)
  end

  def attend_meeting
    puts "Please hold my calls."
  end
end

frank = Assistant.new("Frank")
anne = Manager.new(frank)
anne.attend_meeting
anne.read_email
anne.check_schedule
