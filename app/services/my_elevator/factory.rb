require 'singleton'
module MyElevator
  class Factory
    include Singleton

    attr_reader :elevator, :reach_floor

    def initialize
      floors = [
        'B',
        'GF',
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        '9',
        '10',
        '11',
        'PH'
      ]
      @elevator = Elevator::Elevator.new floors
      @reach_floor = MyElevator::ReachFloor.new @elevator
    end
  end
end
