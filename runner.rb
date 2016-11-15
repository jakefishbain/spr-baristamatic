require_relative 'baristamatic'

bari = Baristamatic.new

response = ''
until response == 'q'
  if response == 'r'
    bari.restock
  elsif (1..6).include?(response.to_i)
    bari.order(response)
  elsif response != ''
    puts "Invalid Selection: #{response}"
  end
  bari.display_inv
  bari.display_menu
  response = gets.chomp.downcase
end