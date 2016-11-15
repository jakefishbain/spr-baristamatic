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
                                        'Cream': 1,
                                        'In Stock': true},
                  'Decaf Coffee' =>    {'Decaf Coffee': 3,
                                        'Sugar': 1,
                                        'Cream': 1,
                                        'In Stock': true},
                  'Caffe Latte' =>     {'Espresso': 2,
                                        'Steamed Milk': 1,
                                        'In Stock': true},
                  'Caffe Americano' => {'Espresso': 3,
                                        'In Stock': true},
                  'Caffe Mocha' =>     {'Espresso': 1,
                                        'Cocoa': 1,
                                        'Steamed Milk': 1,
                                        'Whipped Cream': 1,
                                        'In Stock': true},
                  'Cappuccino' =>      {'Espresso': 2,
                                        'Steamed Milk': 1,
                                        'Foamed Milk': 1,
                                        'In Stock': true}
    }
  end

  def display_inv 
    puts "\nInventory:"
    @inventory.each {|item, details| puts "#{item},#{details[:inventory]}"} 
  end

  def display_menu
    puts "Menu:"
    @menu.each_with_index do |(drink, ingredients), index|
      if in_stock?(drink)
        puts drink
      end
    end
  end

  def in_stock?(drink)
    #check inventory to determine if in stock
  end
  
  def restock
    puts 'Restocking inventory...'
    @inventory.values.map {|item, details| item[:inventory] = 10}
    self.display_inv
    self.display_menu
  end

  # display menu
end













