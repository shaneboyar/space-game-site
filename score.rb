class Score
  attr_reader :name
  attr_reader :score
  attr_reader :date

  def initialize(name, score, date)
    @name = name
    @score = score
    @date = date
  end
end