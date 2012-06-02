class Amida
  def initialize(cols)
    @header = ('A'..'Z').to_a[0...cols]

    @rows = 10.times.map {
      Row.new(cols)
    }
  end

  def to_s
    [@header.join('   '), @rows].join($/) + $/
  end

  class Row
    def initialize(cols)
      @cols = Array.new(cols.pred, '   ')
      @cols[rand(cols.pred)] = '---'
    end

    def to_s
      '|' + @cols.join('|') + '|'
    end
  end
end
