class Baristamatic
  attr_accessor :inventory, :menu

  def initialize
    @inventory = {
                  'Coffee' => {'inventory' => 10,
                               'price' => 0.75},
                  'Decaf Coffee' => {'inventory' => 10,
                                     'price' => 0.75},
                  'Sugar' => {'inventory' => 10,
                                     'price' => 0.25},
                  'Cream' => {'inventory' => 10,
                                     'price' => 0.25},
                  'Steamed Milk' => {'inventory' => 10,
                                     'price' => 0.35},
                  'Foamed Milk' => {'inventory' => 10,
                                     'price' => 0.35},
                  'Espresso' => {'inventory' => 10,
                                     'price' => 1.10}, 
                  'Cocoa' => {'inventory' => 10,
                                     'price' => 0.90},
                  'Whipped Cream' => {'inventory' => 10,
                                     'price' => 1}               
    }
    @menu = {
              'Coffee' =>          {'Coffee' => 3,
                                    'Sugar' => 1,
                                    'Cream' => 1},
              'Decaf Coffee' =>    {'Decaf Coffee' => 3,
                                    'Sugar' => 1,
                                    'Cream' => 1},
              'Caffe Latte' =>     {'Espresso' => 2,
                                    'Steamed Milk' => 1},
              'Caffe Americano' => {'Espresso' => 3},
              'Caffe Mocha' =>     {'Espresso' => 1,
                                    'Cocoa' => 1,
                                    'Steamed Milk' => 1,
                                    'Whipped Cream' => 1},
              'Cappuccino' =>      {'Espresso' => 2,
                                    'Steamed Milk' => 1,
                                    'Foamed Milk' => 1}
    }
  end

  update inventory
  list menu
end