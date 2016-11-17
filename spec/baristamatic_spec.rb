require_relative '../baristamatic'

describe Baristamatic do 
  let(:bari) { Baristamatic.new }

  it 'has an inventory that is full' do
    expect(bari.inventory.count).to eq 9
  end
end