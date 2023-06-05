require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do

  let(:biker) { Biker.new("Kenny", 30) }
  let(:biker2) { Biker.new("Athena", 15) }
  let(:biker3) { Biker.new("Andi", 17) }
  let(:ride1) { Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills}) }
  let(:ride2) { Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel}) }
  let(:bike_club) { BikeClub.new("Bike Club") }


  it 'exists' do
    expect(bike_club).to be_a(BikeClub)
    expect(bike_club.name).to eq("Bike Club")
    expect(bike_club.bikers).to eq([])
  end

  it 'has attributes' do
    expect(bike_club.name).to eq("Bike Club")
    expect(bike_club.bikers).to eq([])
  end

  it 'can add bikers' do
    bike_club.add_bikers(biker)
    bike_club.add_bikers(biker2)
    bike_club.add_bikers(biker3)
    expect(bike_club.bikers).to eq([biker, biker2, biker3])
  end

  it 'can determine which biker has logged the most rides' do
    bike_club.add_bikers(biker)
    bike_club.add_bikers(biker2)
    bike_club.add_bikers(biker3)
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker3.learn_terrain!(:gravel)
    biker3.learn_terrain!(:hills)
    biker.log_ride(ride2, 61.6)
    biker2.log_ride(ride1, 97.0)
    biker3.log_ride(ride2, 63.2)
    biker2.log_ride(ride2, 62.6)
    expect(bike_club.logged_the_most_rides).to eq(biker2)
  end
end