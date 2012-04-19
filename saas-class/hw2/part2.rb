class CartesianProduct
  include Enumerable
  # your code here
  def initialize(a,b)
    @r = Array.new(0)
    k = 0
    a.each {|v1|
      b.each {|v2|
        @r.push([v1,v2])
      }
    }
  end
  def each
    @r.each {|x| yield x}
  end
end