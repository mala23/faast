# link to the Train class
require './lib/train'

# i am describing the functionality of a specific class, the train

describe Train do

	# passenger is created and handed to all tests
	let(:passenger) { Passenger.new }
	# coach double is created and handed to all tests
	let(:coach) { double :coach }
	# train is created and handed to all tests
	let(:train) { Train.new }

	# this is a specific behaviour
	# that i expect to be present

	it 'should accept coaches' do
		expect(train.coach_count).to eq(0)
	end


end