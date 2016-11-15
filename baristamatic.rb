class Baristamatic
  attr_accessor :inventory, :menu

  def initialize
    @inventory = {
                  'Coffee' =>        {inventory: 10,
                                      price: 0.75},
                  'Decaf Coffee' =>  {inventory: 10,
                                      price: 0.75},
                  'Sugar' =>         {inventory: 10,
                                      price: 0.25},
                  'Cream' =>         {inventory: 10,
                                      price: 0.25},
                  'Steamed Milk' =>  {inventory: 10,
                                      price: 0.35},
                  'Foamed Milk' =>   {inventory: 10,
                                      price: 0.35},
                  'Espresso' =>      {inventory: 10,
                                      price: 1.10}, 
                  'Cocoa' =>         {inventory: 10,
                                      price: 0.90},
                  'Whipped Cream' => {inventory: 10,
                                      price: 1}               
    }
    @menu = {
                  'Coffee' =>          {'Coffee': 3,
                                        'Sugar': 1,
                                        'Cream': 1},
                  'Decaf Coffee' =>    {'Decaf Coffee': 3,
                                        'Sugar': 1,
                                        'Cream': 1},
                  'Caffe Latte' =>     {'Espresso': 2,
                                        'Steamed Milk': 1},
                  'Caffe Americano' => {'Espresso': 3},
                  'Caffe Mocha' =>     {'Espresso': 1,
                                        'Cocoa': 1,
                                        'Steamed Milk': 1,
                                        'Whipped Cream': 1},
                  'Cappuccino' =>      {'Espresso': 2,
                                        'Steamed Milk': 1,
                                        'Foamed Milk': 1,}
    }
  end

  def display_inv 
    puts "Inventory:"
    @inventory.map {|item, details| puts "#{item},#{details[:inventory]}"} 
  end

  def display_menu
    puts "Menu:"
    @menu.each_with_index do |(drink, ingredients), index|
        puts "#{index+1},#{drink},$#{price(ingredients)},#{in_stock?(ingredients)}"
    end
  end

  def order(item)
    @menu.each_with_index do |(drink, ingredients), index|
        update_inv(ingredients)
        if index+1 == item.to_i
          puts "Dispensing: #{drink}"
          self.display_inv
          self.display_menu
        end
    end
  end

  def price(ingredients)
    ingredients.map {|ingredient| @inventory["#{ingredient[0]}"][:price]*ingredient[1]}.reduce(:+).round(2)
  end
  
  def in_stock?(ingredients)
    ingredients.each do |ingredient| 
      return true if (@inventory["#{ingredient[0]}"][:inventory] -= ingredient[1]) > 0
    end
  end

  def update_inv(ingredients)
    ingredients.each do |ingredient| 
      @inventory["#{ingredient[0]}"][:inventory] -= ingredient[1]
    end
  end

  def restock
    puts 'Restocking inventory...'
    @inventory.values.map {|item, details| item[:inventory] = 10}
    self.display_inv
    self.display_menu
  end

  def run(response)
    self.display_inv
    self.display_menu
    self.order(response)
  end

end













