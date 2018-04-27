
class ElevatorsController < ApplicationController
  before_action :set_elevator

  def index; end

  def move
    reach_floor = MyElevator::Factory.instance.reach_floor
    reach_floor.subscribe(MyElevator::Level.new)
    reach_floor.subscribe(MyElevator::Doors.new)

    @elevator.mark_floor params[:floor]
    @elevator.start_moving

    redirect_to action: :index
  end

  private

  def set_elevator
    @elevator = MyElevator::Factory.instance.elevator
  end
end
