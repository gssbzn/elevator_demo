module MyElevator
  class Level
    def reach_floor(floor)
      Rails.logger.info "at floor #{floor}"
    end
  end
end
