class Stack

  def initialize
    @stack = []
  end

  def push(el)
    @stack += el
  end

  def pop
    a = @stack[-1]
    @stack.delete_at(-1)
    return a
  end

  def peek
    @stack[-1]
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.insert_at(-1, el)
  end

  def dequeue
    a = @queue[-1]
    @queue.delete_at(-1)
    return a
  end
end

class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do|pair|
      if pair[0] == key
        pair[1] == value
        return
      end 
    @map << [key, value]
  end

  def get(key)
    @map.each {|pair| return pair[1] if pair[0] == key }
  end

  def delete(key)
    @map.reject {|pair| pair[0] == key}
  end

  def show
    puts @map.inspect
  end

end
