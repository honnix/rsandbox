class String
  alias :real_length :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

'War and Peac'.real_length
'War and Peace'.length
