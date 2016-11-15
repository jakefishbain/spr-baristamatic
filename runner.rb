require_relative 'baristamatic'

bari = Baristamatic.new

bari.display_inv
p bari.inventory['Coffee']['inventory'] 
bari.inventory['Coffee']['inventory'] = 8
p bari.inventory['Coffee']['inventory'] 
bari.restock
p bari.inventory['Coffee']['inventory'] 