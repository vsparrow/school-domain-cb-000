# code here!

class School
  attr_accessor :roster, :name

  def initialize name
    @name = name
    # @roster = Hash.new {[]}
    # @roster = Hash.new { [] }
    @roster = Hash.new

  end

  def add_student name,grade
    if @roster.has_key? grade
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade n
    @roster[n]
  end

  def sort
    @roster.keys.each {|key| @roster[key].sort!}
    @roster
  end

end
