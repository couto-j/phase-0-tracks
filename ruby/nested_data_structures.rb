puts "Knitting Needle Inventory".upcase

inventory = {
  
  circular:{
    '16 inch' => ['US 2', 'US 4', 'US 6', 'US 8', 'US 10'],
    '24 inch' => ['US 2', 'US 3', 'US 4', 'US 5', 'US 6', 'US 7'],
    '32 inch' => ['US 0', 'US 1', 'US 2', 'US 4', 'US 9'],
    '40 inch' => ['US 1.5', 'US 2', 'US 2.5', 'US 3', 'US 4'],
    '60 inch' => [],
  },
  
  straight:{
    '10 inch' => ['US 4', 'US 5', 'US 6', 'US 7', 'US 8', 'US 9'],
    '14 inch' => ['US 3', 'US 4', 'US 5', 'US 6', 'US 7', 'US 8'],
  }
  
}

puts "Here is the entire current knitting needle inventory:"
puts inventory [:circular]
puts "Here are the 16 inch circulars we have in stock:"
puts inventory[:circular]['16 inch']
puts "Here are the 24 inch circulars we have in stock:"
puts inventory[:circular]['24 inch']
puts "We just got 60 inch circular needles in stock! Here they are:"
puts inventory [:circular]['60 inch'].push('US 2', 'US 3', 'US 4')
puts "Here are the straight needles we have in stock:"
puts inventory[:straight]
puts "Here are the straight 14 inch needles we have in stock:"
puts inventory[:straight]['14 inch']
puts "Here are the straight 10 inch needles we have in stock:"
puts inventory[:straight]['10 inch']
puts "Oppsie. Looks like we got one of those wrong. Here's the updated list of 10 inch straight needles:"
inventory[:straight]['10 inch'][0] = 'US 2'
puts inventory[:straight]['10 inch']
