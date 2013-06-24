module Perform
  
  def Perform.add(x,y)
    return (x+y)
  end
  def Perform.sub(x,y)
    return (x-y)
  end
  def Perform.mult(x,y)
    return (x*y)
  end
  def Perform.div(x,y)
    return (x/y)
  end
end


class ZZ

  include Perform
  def work(a,b)
    arr=Array.new
    
    arr << Perform.add(a,b)
    arr << Perform.sub(a,b)
    arr << Perform.mult(a,b)
    arr << Perform.div(a,b)
    
    puts arr
  end
  
end
d=ZZ.new
d.work(3,4)
