require_relative './my_Enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&number)
    @list.each(&number)
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 1 })
p(list.any? { |e| e == 6 })
p(list.filter(&:even?))
p(list.filter(&:odd?))
