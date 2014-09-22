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

	# it 'should have a capacity of 40' do
	# end

	it 'should pick up passengers from a station' do
		expect(coach.passenger_count).to eq(0)
		coach.pick_up(passenger)
		expect(coach.passenger_count).to eq(1)
	end

	it 'should release passengers at station' do
		coach.pick_up(passenger)
		expect(coach.passenger_count).to eq(1)
		coach.drop_off(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	# it "should know when it's full" do
	# end

	# should something like this be used for accept and release passengers?

	# it 'can travel from station to station' do
	# 	expect(station01).to receive(:delete)
	# 	expect(station02).to receive(:dock)
	# 	train.leave(station01)
	# 	train.arrive(station02)
	# end

end