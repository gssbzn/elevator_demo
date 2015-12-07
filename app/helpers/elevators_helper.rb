module ElevatorsHelper
  def active_floor(current_floor, floor)
    return 'item active' if current_floor == floor
    'item'
  end
end
