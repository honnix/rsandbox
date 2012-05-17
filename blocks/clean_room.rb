class CleanRoom
  def comlex_calculation
    11
  end

  def do_something
    'doing'
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if comlex_calculation > 10
    do_something
  end
end
