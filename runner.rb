require_relative 'baristamatic'

bari = Baristamatic.new
# bari.run

response = ''
    until response == 'q' || response == 'Q'
      if response == 'r' || response == 'R'
        bari.restock
      elsif (1..6).include?(response.to_i)
        bari.order(response)
      elsif response != ''
        puts "Invalid Selection: #{response}"
      end
    bari.display_inv
    bari.display_menu
    response = gets.chomp
    end

