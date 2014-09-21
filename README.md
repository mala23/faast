faast
=====

Makers Challenge #03 - Fast And Accessible Super Tube
-----------------------------------------------------

#### Briefing
> Implement the FAAST system so that it can be 
> deployed into the London underground network.

> The FAAST system will cater for the following
> - There will be a number of trains inside the system.
> - Trains will travel from station to station.
> - Inside of a station, when the train stops, passengers will 
> alight and enter the carriages of the train.
> - A Passenger will touch in at the station and touch out at the destination station.
> - Each coach of a train can hold up to 40 passengers.
> - Each train is made of a number of coaches.

#### Bonus
> If you want to impress the mayor of London even more you will add a 
> charging system where the passengers can only touch in a station 
> (and access the train) if their account has more than 2 GBP.


---


#### Domain Model
##### Objects
- Passengers
- Trains
- Coaches
- Stations

##### Functionality
- Passenger can touch in at station
- Passenger can touch out at station
- Passenger can enter train
- Passenger can alight train
- Train is made of a number of carriages
- Train can travel from station to station
- Train can stop
- Coach can hold up to 40 passengers