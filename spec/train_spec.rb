# link to the Train class
require './lib/train'
require './lib/coach'

# i am describing the functionality of a specific class, the train

describe Train do

	# passenger is created and handed to all tests
	let(:passenger) { Passenger.new }
	# coach double is created and handed to all tests
	let(:coach) { double :coach }
	# train is created and handed to all tests
	let(:train) { Train.new }
	# station is created and handed to all tests
	let(:station01) { double :station01 }
	let(:station02) { double :station02 }

	def fill_train(train)
		10.times { train.hookup(Coach.new) }
	end

	# this is a specific behaviour
	# that i expect to be present

	it 'should accept coaches' do
		expect(train.coach_count).to eq(0)
	end

	it 'should know when its full' do
		expect(train).not_to be_full
		fill_train train
	end

	it 'can travel from station to station' do
		expect(station01).to receive(:delete)
		expect(station02).to receive(:dock)
		train.leave(station01)
		train.arrive(station02)
	end

end