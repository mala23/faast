# link to Station class
require './lib/station.rb'

# i am describing the functionality of a specific class, the station
describe Station do
	
	# create station and hand to all tests
	let(:station) { Station.new }

	it 'should be empty when created' do
		expect(waiting_passengers.count).to eq(0)
	end

	it 'should be able to hold passengers' do
		expect(waiting_passengers.count).to eq(0)
	end

end
