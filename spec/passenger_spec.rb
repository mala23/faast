# link to the Passenger class
require './lib/passenger'

# i am describing the functionality of a specific class, the passenger

describe Passenger do

	# passenger is created and handed to all tests
	let(:passenger) { Passenger.new }
	# coach double is created and handed to all tests
	let(:coach) { double :coach }

	# this is a specific behaviour
	# that i expect to be present
	it 'should not be touched in at a station when we create it' do
		# expect an instance of this class to have
		# a method 'touchedin?' that should return false
		expect(passenger).not_to be_touched_in
	end

	it 'should be able to touch in at a station' do
		station = double :station
		expect(station).to receive(:enter)
		passenger.touch_in(station)
		expect(passenger).to be_touched_in
	end

	it 'should be able to board a coach' do
		expect(coach).to receive(:pick_up)
		passenger.board(coach)
		expect(passenger).to be_boarded
	end

	it 'should be able to alight from a coach' do
		expect(coach).to receive(:drop_off)
		passenger.alight(coach)
		expect(passenger).not_to be_boarded
	end

	# it 'should know when it is on a train' do
	# end

	# it 'should know when it is in a station' do
	# end

end