require_relative 'baristamatic'

bari = Baristamatic.new

response = ''
until response == 'q' || response == 'Q'
  bari.run(response)
  response = gets.chomp
end


# p bari.inventory['Coffee'][:inventory]
# bari.inventory['Coffee'][:inventory] = bari.inventory['Coffee'][:inventory] -3
# p bari.inventory['Coffee'][:inventory]
# bari.restock
# p bari.inventory['Coffee'][:inventory]

