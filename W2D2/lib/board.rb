class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {[]}
    place_stones
  end

  def []=(pos, val)
    x,y = pos
    [x][y]
  end

  def place_stones
    self.cups.each_with_index do |cup, i| 
      4.times {cup << :stone} unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    if !(0..5).include?(start_pos) && !(7..12).include?(start_pos)
      raise "Invalid starting cup"
    elsif self.cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    start_cup = self.cups[start_pos]
    cups[start_pos..start_pos+start_cup.length]
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
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
