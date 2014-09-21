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

end