
class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    secsToMins(@seconds)
    minutesToHours(@minutes)
    padded(@hours, @minutes, @seconds)
    @hours + ":" + @minutes + ":" + @seconds
  end

  def secsToMins(secs)
    @minutes = secs / 60
    @seconds = secs % 60
  end

  def minutesToHours(mins)
    @hours = mins / 60
    @minutes = mins % 60
  end

  def padded(h, m, s)
    if h < 10
      @hours = "0" + @hours.to_s
    else @hours = @hours.to_s     end
    if m < 10
      @minutes = "0" + @minutes.to_s
    else @minutes = @minutes.to_s     end
    if s < 10
      @seconds = "0" + @seconds.to_s
    else @seconds = @seconds.to_s     end
  end
end
