require 'capybara/rspec'

feature 'member of a public accesses bike' do
  scenario 'docking station releases a bike that is not broken' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(bike).not_to be_broken
  end

  scenario 'which is broken' do
    docking_station = DockingStation.new
    bike = Bike.new
    broken_bike = bike.break!
    docking_station.dock(broken_bike)
    expect { docking_station.release_bike }.to raise_error('Bike is broken!')
  end
end
