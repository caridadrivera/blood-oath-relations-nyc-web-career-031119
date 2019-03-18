require'pry'


class Cult


  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

 def initialize(name, location, founding_year, slogan)
   @name = name
   @location = location
   @founding_year = founding_year
   @slogan = slogan

   @@all << self
 end

 def self.all
   @@all
 end

def recruit_follower(follower, date)
  BloodOath.new(date, self, follower)
end

def bloodoaths #all of the bloodoaths this cult has
  BloodOath.all.select do |oath|
    oath.cult == self
  end
end

def cult_population
  self.bloodoaths.count
end

def self.find_by_name(name)
  @@all.select do |cult|
    cult.name == name
  end
end

def self.find_by_location(location)
  @@all.select do |cult|
    cult.location == location
  end
end

def self.find_by_founding_year(year)
  @@all.select do |cult|
    cult.founding_year == year
  end
end

def average_age #sum of ages && sum of followers
  self.bloodoaths.map do |oath|
    oath.follower.age
  end
end


end
