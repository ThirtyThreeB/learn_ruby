class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def padded num 
    if num<10
      num = num.to_s
      num="0#{num}"
    else
      num.to_s
    end
  end

  def time_string
    case true
    when @seconds < 60 
      @seconds = seconds
    when @seconds >= 60 && @seconds < 3600
        @minutes = @seconds/60
        @seconds = @seconds-60
    when @seconds >= 3600
        @hours = @seconds/3600
        @minutes = @seconds/60-60
        @seconds = @seconds-3600*@hours-60*@minutes
    end
    @timer = "#{padded(@hours)}:#{padded(@minutes)}:#{padded(seconds)}"
  end
end
