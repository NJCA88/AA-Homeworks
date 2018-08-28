class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..13).each do |cupidx|
      # next if [6, 14].include? (cupidx)
      # puts "adding to cup #{cupidx}"
      4.times { @cups[cupidx] << :stone}
    end
      @cups[6] = []
      @cups[13]= []
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
     # empties cup
     stones = @cups[start_pos]
     @cups[start_pos] = []
     pos = start_pos
     until stones.empty?
       pos += 1
       pos = 0 if pos > 13
       if pos == 6
         @cups[6] << stones.shift if current_player_name == @name1
       elsif pos == 13
         @cups[13] << stones.shift if current_player_name == @name2
       else
         @cups[pos] << stones.shift
       end
     end

     self.render
     next_turn(pos)
   end


  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

     return :prompt if [6,13].include?( ending_cup_idx)
     if @cups[ending_cup_idx].length == 1
          return :switch
      else
        return ending_cup_idx
      end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
