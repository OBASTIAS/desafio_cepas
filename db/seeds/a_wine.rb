100.times do |i|
    Wine.create!(name: "Wine #{i+1}")
    puts "Wine #{i+1}"
end