class Calculator
  def push(n)
    @args ||=[]
    @args << n
  end

  def add
    result = @args.inject :+
    @args.clear
    result
  end

  def mul
    result = @args.inject :*
    @args.clear
    result
  end
end
