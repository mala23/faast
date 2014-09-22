# link to Coach class
require './lib/coach.rb'
require './lib/passenger.rb'

# i am describing the functionality of a specific class, the coach
describe Coach do

	# create coach and hand to all tests
	let(:coach) { Coach.new }
	let(:passenger) { Passenger.new }

	it 'should be empty on creation' do
		expect(coach.passenger_count).to eq(0)
	end

	it 'should pick up passengers from a station' do
		expect(coach.passenger_count).to eq(0)
		coach.pickup(passenger)
		expect(coach.passenger_count).to eq(1)
	end

end