class LinkedList
    attr_accessor :head, :last
    def initialize
      @head = nil
      @last = nil
    end
  
    def append(value)
      if @head == nil
        @head = Node.new
        @head.value = value
      elsif @last == nil
        @last = Node.new
        @last.value = value
        @head.next_node = @last
      else
        @last.nexNode = Node.new
        @last.next_node.value = value
        @last = @last.next_node
      end
    end
  
    def prepend(value)
      val = Node.new
      val.value = value
      val.next_node = @head
      @head = val
    end
  
    def size
      counter = 0
      tracker = @head
      while tracker != nil
        counter += 1
        tracker = tracker.next_node
      end
      return counter
    end
  
    def at(index)
      val = @head
      for i in 0..index-1
        if val.next_node == nil
          puts "hello"
          return nil
        end
        val = val.next_node
      end
      return val
    end
  
    def contains(value)
      val = @head
      while val != nil
        if val.value == value
          return true
        end
        val = val.next_node
      end
      return false
    end
  
    def find(value)
      val = @head
      counter = 0
      while val.value != value
        counter +=1
        val = val.next_node
        if val ==nil
          return "error"
        end
      end
      return counter
    end
  
    def pop
      @last = at(size-2)
      @last.next_node = nil
    end
  
    def to_s
      val = @head
      word = ""
      while val !=nil
        word += "#{val.value} -> "
        val = val.next_node
      end
      return word
    end
  end
  
  
  class Node
    attr_accessor :value, :next_node
    def initialize
      @value = nil
      @next_node = nil
    end
  end
  
  list = LinkedList.new
  list.append("jacob")
  list.append("Jane")
  list.prepend("Anthony")
  list.at(0).value
  list.contains("Jacob")
  puts list.to_s
  puts list.find("Jane")
  puts list.size
  list.pop
  puts list.size
  puts list.to_s