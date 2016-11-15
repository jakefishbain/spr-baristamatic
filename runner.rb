require_relative 'baristamatic'

bari = Baristamatic.new

response = ''
unless response == 'q' || response == 'Q'
  bari.display_inv
  bari.display_menu
  bari.order
end


# p bari.inventory['Coffee'][:inventory]
# bari.inventory['Coffee'][:inventory] = bari.inventory['Coffee'][:inventory] -3
# p bari.inventory['Coffee'][:inventory]
# bari.restock
# p bari.inventory['Coffee'][:inventory]

