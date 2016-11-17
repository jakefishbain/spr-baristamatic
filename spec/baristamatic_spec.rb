require_relative '../baristamatic'

describe Baristamatic do 
  let(:bari) { Baristamatic.new }

  it 'has an inventory' do
    expect(bari.inventory.count).to eq 9
  end

  it 'has full inventory upon startup' do
    full = ''
    bari.inventory.each do |ingredient|
      expect(ingredient[1][:inventory]).to eq 10
    end
  end

  it 'has a menu' do
    expect(bari.menu.count).to eq 6
  end

end