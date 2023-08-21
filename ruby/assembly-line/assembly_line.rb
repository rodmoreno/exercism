class AssemblyLine
  PRODUCTION_PER_SPEED = 221

  def initialize(speed)
    @speed = speed
    @cars_assembled = PRODUCTION_PER_SPEED * @speed
  end

  def production_rate_per_hour
    if @speed > 4 && @speed < 9
      @cars_assembled * 0.90
    elsif @speed > 8 && @speed < 10
      @cars_assembled * 0.80
    elsif @speed == 10
      @cars_assembled * 0.77
    else
      @cars_assembled
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
