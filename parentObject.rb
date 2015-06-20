class Pet
def set_name=(name)
@name=name
end
def get_name
return @name
end

def set_noise=(noise)
@noise=noise
end
def get_noise
return @noise
end

def about_pet
return "#{name} makes a #{noise} sound!"
end
end

class Doggy < Pet

def woof
return "woof-woof"
end
end

class Catty < Pet

def meow
return "meeow"
end
end

my_doggy = Doggy.new
my_doggy.set_name= "Buddy"
doggyname = my_doggy.get_name

my_catty = Catty.new
my_catty.set_name = "Kitty"
cattyname = my_catty.get_name

puts "#{doggyname} says #{my_doggy.woof}, #{cattyname} says #{my_catty.meow}"

