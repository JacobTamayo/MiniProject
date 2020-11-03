class Chess
    def initialize
      @head = nil
      @last = nil
    end
    #creates the board. Lowkey is useless
    def self.board
      board = []
      for i in 0..7
        for j in 0..7
          board.push([i,j])
        end
      end
      return board
    end
  
    #Returns all the possible positions that a knight can go
    def knight(position)
      possible_moves = []
      if position[0]-2 > 0 && position [1]+1 < 7
        possible_moves.push([position[0]-2, position[1]+1])
      end
      if position[0]-1 > 0 && position[1]+2 < 7
        possible_moves.push([position[0]-1, position[1]+2])
      end
      if position[0]+1 < 7 && position[1]+2 < 7
        possible_moves.push([position[0]+1, position[1]+2])
      end
      if position[0]+2 < 7 && position[1]+1 < 7
        possible_moves.push([position[0]+2, position[1]+1])
      end
      if position[0]+2 < 7 && position[1]-1 > 0
        possible_moves.push([position[0]+2, position[1]-1])
      end
      if position[0]+1 < 7 && position[1]-2 > 0
        possible_moves.push([position[0]+1, position[1]-2])
      end
      if position[0]-1 > 0 && position[1]-2 > 0
        possible_moves.push([position[0]-1, position[1]-2])
      end
      if position[0]-2 > 0 && position[1]-1 > 0
        possible_moves.push([position[0]-2, position[1]-1])
      end
      return possible_moves
    end
  
    #where the game is played. Takes a start and a finish and must track the path
    def knight_moves(start, finish)
      root = start = @head
      node_assignment(root, knight(start))
      if check(root, finish)
        
    end
    
    #Assigning the possible moves into branching nodes
    def node_assignment(head, possible_moves)
      case possible_moves.length
      when 1
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
      when 2
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
      when 3
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
      when 4
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
        head.fourth_node = Node.new
        head.fourth_node.value = possible_moves[3]
        head.fourth_node.parent_node = head
      when 5
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
        head.fourth_node = Node.new
        head.fourth_node.value = possible_moves[3]
        head.fourth_node.parent_node = head
        head.fifth_node = Node.new
        head.fifth_node.value = possible_moves[4]
        head.fifth_node.parent_node = head
      when 6
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
        head.fourth_node = Node.new
        head.fourth_node.value = possible_moves[3]
        head.fourth_node.parent_node = head
        head.fifth_node = Node.new
        head.fifth_node.value = possible_moves[4]
        head.fifth_node.parent_node = head
        head.sixth_node = Node.new
        head.sixth_node.value = possible_moves[5]
        head.sixth_node.parent_node = head
      when 7
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
        head.fourth_node = Node.new
        head.fourth_node.value = possible_moves[3]
        head.fourth_node.parent_node = head
        head.fifth_node = Node.new
        head.fifth_node.value = possible_moves[4]
        head.fifth_node.parent_node = head
        head.sixth_node = Node.new
        head.sixth_node.value = possible_moves[5]
        head.sixth_node.parent_node = head
        head.seventh_node = Node.new
        head.seventh_node.value = possible_moves[6]
        head.seventh_node.parent_node = head
      when 8
        head.first_node = Node.new
        head.first_node.value = possible_moves[0]
        head.first_node.parent_node = head
        head.second_node = Node.new
        head.second_node.value = possible_moves[1]
        head.second_node.parent_node = head
        head.third_node = Node.new
        head.third_node.value = possible_moves[2]
        head.third_node.parent_node = head
        head.fourth_node = Node.new
        head.fourth_node.value = possible_moves[3]
        head.fourth_node.parent_node = head
        head.fifth_node = Node.new
        head.fifth_node.value = possible_moves[4]
        head.fifth_node.parent_node = head
        head.sixth_node = Node.new
        head.sixth_node.value = possible_moves[5]
        head.sixth_node.parent_node = head
        head.seventh_node = Node.new
        head.seventh_node.value = possible_moves[6]
        head.seventh_node.parent_node = head
        head.eighth_node = Node.new
        head.eighth_node.value = possible_moves[7]
        head.eighth_node.parent_node = head
      end
      return head
    end
  
    #loops through every child node to check for the finish
    def check(start, finish)
      if start.first_node.value == finish || start.second_node.value == finish || start.third_node.value == finish || start.fourth_node.value == finish || start.fifth_node.value == finish || start.sixth_node.value == finish || start.seventh_node.value == finish || start.eighth_node.value == finish
        return true
      else
        return false
      end
    end
  end
  
  class Node
    attr_accessor :value, :first_node, :second_node, :third_node, :fourth_node, :fifth_node, :sixth_node, :seventh_node, :eighth_node, :parent_node
  
    def initialize
      @value = nil
      @first_node = nil
      @second_node = nil
      @third_node = nil
      @fourth_node = nil
      @fifth_node = nil
      @sixth_node = nil
      @seventh_node = nil
      @eighth_node = nil
      @parent_node = nil
    end
  
    def set_value(val)
      @value = val
    end
  end
  
  chess = Chess.new
  #puts chess.check(chess.node_assignment(chess.knight([3,3])))
  moves = chess.knight([3,3])
  #chess.node_assignment(chess.knight([3,3]))
  node = Node.new
  node.value = 5
  head = chess.node_assignment(node, chess.knight([3,3]))
  p head.first_node.value
  p head.eighth_node.value
  r = l = 5
  puts r
  