class Doggy
attr_writer :name, :noise
attr_reader :name, :noise
end

def about_doggy
return "{@name} and {@noise}"
end

my_doggy.name = "Buddy"
doggyname = my_doggy.name
my_doggy.noise = "Woof-Woof"
doggynoise = my_doggy_noise

puts doggy.about_doggy

