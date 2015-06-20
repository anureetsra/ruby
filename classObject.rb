class Doggy
def set_name=(doggy_name)
@name=doggy_name
end
def get_name
return @name
end

def set_noise=(doggy_noise)
@noise=doggy_noise
end
def get_noise
return @noise
end

def about_doggy
return "#{@name} makes a #{@noise} sound!"
end
end

doggy = Doggy.new
doggy.set_name = "Buddy"
doggy.set_noise = "Woof-Woof"

puts doggy.about_doggy
