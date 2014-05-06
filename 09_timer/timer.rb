class Timer
  attr_accessor :seconds, :time_string

  def seconds
    start_time = 0
  end
  
  def time_string
    secs = @seconds
    time_units = [hour_arr = [], min_arr = [], sec_arr = []]
    hour_arr.push (secs/3600)
    min_arr.push ((secs%3600)/60)
    sec_arr.push ((secs%3600)%60)
    time_units.each do |unit|
      if unit.join.length == 1
        unit.unshift(0)
      end
    end
    "#{hour_arr.join}:#{min_arr.join}:#{sec_arr.join}"
  end

end
