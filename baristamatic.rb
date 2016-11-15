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

  def order(response)
    @menu.each_with_index do |(drink, ingredients), index|
        if index+1 == response.to_i
          if in_stock?(ingredients)
            puts "Dispensing: #{drink}"
            update_inv(ingredients)
            break
          else
            puts "Out of stock: #{drink}"
            break  
          end
        end
    end
  end

  def price(ingredients)
    ingredients.map {|ingredient| @inventory["#{ingredient[0]}"][:price]*ingredient[1]}.reduce(:+).round(2)
  end
  
  def in_stock?(ingredients)
    ingredients.each do |ingredient| 
      if @inventory["#{ingredient[0]}"][:inventory] <= ingredient[1]
        return false
      else 
        return true
      end
    end
  end

  def update_inv(ingredients)
    ingredients.map do |ingredient|
      @inventory["#{ingredient[0]}"][:inventory] -= ingredient[1]
    end
  end

  def restock
    puts 'Restocking inventory...'
    @inventory.values.map {|item, details| item[:inventory] = 10}
  end

  def run
    response = ''
    until response == 'q' || response == 'Q'
      if response == 'r' || response == 'R'
        restock
      elsif (1..6).include?(response.to_i)
        order(response)
      elsif response != ''
        puts "Invalid Selection: #{response}"
        break
      end
    display_inv
    display_menu
    response = gets.chomp
    end
  end

end













