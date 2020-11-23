require '/tools/console.rb'  

loc1 = Location.new("mine")
loc2 = Location.new("yours")
loc3 = Location.new("neither")

t1 = Trainer.new("Tim")
t2 = Trainer.new("Dustin")
t3 = Trainer.new("Nick")

c1 = Client.new("Luke", t3, loc1)
c2 = Client.new("Andrew", t3, loc2)
c3 = Client.new("Lucas", t1, loc2)
c4 = Client.new("Drew", t2, loc3)
c5 = Client.new("Mike", t2, loc3)
c6 = Client.new("Bobby", t3, loc3)
c7 = Client.new("Bob", t3, loc3)

binding.pry