class DockingStation
  def initialize
  end

  def release_bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  def capacity
    @capacity = 10
  end
end
