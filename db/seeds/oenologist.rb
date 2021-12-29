require 'faker'

30.times do |x|
    Oenologist.create!(
    name: "Enólogo #{x+1}", 
    nationality: Faker::Nation.nationality,
    age: x+1 * x
    )
    puts "enologo nro #{x+1}"
end