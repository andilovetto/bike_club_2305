class BikeClub
  attr_reader :name,
              :bikers


  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_bikers(biker)
    @bikers.push(biker)
  end

  def logged_the_most_rides
    most_biker = nil
    rides = 0
    bikers.each do |biker|
    end
  end

end

