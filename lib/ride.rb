class Ride
  attr_reader :name,
              :distance,
              :terrain,
              :loop

  def initialize(ride_details)
    @name = ride_details[:name]
    @distance = ride_details[:distance]
    @terrain = ride_details[:terrain]
    @loop = ride_details[:loop]
  end

  def loop?
    @loop
  end

  
  def total_distance
    if @loop == false
      @distance * 2
    else 
      @loop = @distance
    end
  end

end          
