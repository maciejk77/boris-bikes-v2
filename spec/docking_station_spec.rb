require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }

  it 'can release bike' do
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'can dock a bike' do
    docking_station.dock(:bike)
    expect(docking_station.release_bike).to eq(:bike)
  end

  it 'can store bikes' do
    2.times { docking_station.dock(:bike) }
    expect(docking_station.container.count).to eq(2)
  end

  it 'has a capacity of 10' do
    expect(docking_station.capacity).to eq(10)
  end

  it 'raises an error when full' do
    10.times { docking_station.dock(:bike) }
    expect { docking_station.dock(:bike) }.to raise_error('Station full')
  end
end
