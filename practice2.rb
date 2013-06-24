

class Practice2
 
  def self.substr(str1,str2)
    k=str1.include?str2
    if(k==true)
      puts "true #{str2} is a substr of #{str1}"
    else
      puts"false #{str2} is not a substr of #{str1}"
    end
  end
 end

def self.sorting(*arr)
  i=0
  while (i < arr.length-1) do
    j=i
    while (j< arr.length) do
      if (arr[i] > arr[j])
        arr[j],arr[i]=arr[i],arr[j]
      end
      j+=1
    end
    i+=1
  end
  puts arr
end


def self.gcd(n1,n2)
  if n2>n1
    n1,n2=n2,n1
  end
  z=1
  until (z==0) do
    z=n1%n2
    n1,n2=n2,z
  end
  puts "#{n1} is the gcd"
end



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


d=Practice2.new
d.work(3,4)


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

