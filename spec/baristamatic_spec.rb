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

  it 'has the correct ingredients for a drink' do
    coffee = bari.menu['Coffee']
    expect(coffee[:Coffee]).to eq 3
    expect(coffee[:Sugar]).to eq 1
    expect(coffee[:Cream]).to eq 1
  end

  it 'can display its inventory' do
    expect(bari.display_inv).to eq bari.inventory
  end

  it 'can display its menu' do
    expect(bari.display_menu).to eq bari.menu
  end

  it 'can restock its inventory' do
    bari.inventory['Coffee'][:inventory] = 8
    bari.restock
    expect(bari.inventory['Coffee'][:inventory]).to eq 10
  end

  it 'can order a drink' do
    bari.order(1)
    expect(bari.inventory['Coffee'][:inventory]).to eq 7
  end

  it 'can determine a price' do
    coffee = bari.menu['Coffee']
    expect(bari.price(coffee)).to eq 2.75
  end

  it 'can determine if a drink is in stock' do

  end
end