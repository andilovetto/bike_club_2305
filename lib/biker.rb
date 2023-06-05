class Biker
  attr_reader :name,
              :max_distance,
              :rides,
              :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain.push(terrain)
  end

  def log_ride(ride, time)
    unless !acceptable_terrain.include?(ride.terrain) || @max_distance <= ride.total_distance
      if rides.keys.include?(ride)
       rides[ride] << time 
      else
        rides[ride] = [time]
      end
    end
  end

  def personal_record(ride)
    if rides.keys.include?(ride)
      rides[ride].min
    else
      false
    end
  end


end