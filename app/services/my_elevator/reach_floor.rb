module MyElevator
  class ReachFloor < Elevator::Observer
    include Wisper::Publisher

    def update(floor, is_marked)
      broadcast(:reach_floor, floor)
      broadcast(:open_doors, floor) if is_marked
    end
  end
end
