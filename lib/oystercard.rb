class Oystercard
  attr_reader :balance, :max_limit
  MAX_LIMIT = 90

  def initialize
    @balance = 0
    @max_limit = MAX_LIMIT
  end

  def top_up(amount)
    fail "Unable to top up above #{@max_limit}" if (@balance + amount) > @max_limit

    @balance += amount
  end
end
