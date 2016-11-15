class Baristamatic
  attr_accessor :inventory
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
  end
end