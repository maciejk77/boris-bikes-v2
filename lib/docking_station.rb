class DockingStation
  def initialize
    @container = []
  end

  def release_bike
    @container.pop
  end

  def dock(bike)
    raise 'Station full' if @container.count >= 10 
    @container << bike
  end

  def capacity
    @capacity = 10
  end

  def container
    @container
  end
end
