# link to the Passenger class
require './lib/passenger'

# i am describing the functionality of a specific class, the passenger

describe Passenger do

	# this is a specific behaviour
	# that i expect to be present
	it 'should not be touched in at a station when we create it' do
		passenger = Passenger.new # initialise a new object of the class passenger
		# expect an instance of this class to have
		# a method 'touchedin?' that should return false
		expect(passenger).not_to be_touched_in
	end

	it 'should be able to touch in at a station' do
		station = double :station
		expect(station).to receive(:enter)
		passenger = Passenger.new
		passenger.touch_in(station)
		expect(passenger).to be_touched_in
	end

end