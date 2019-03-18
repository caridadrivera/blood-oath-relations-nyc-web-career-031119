class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

 def initialize(name, age, life_motto)
   @name = name


   @@all << self
 end

 def self.all
   @@all
 end

 def bloodoaths
   BloodOath.all.select do |oath|
     oath.follower == self
   end
 end

 def cults
   self.bloodoaths.map do |oath|
     oath.cult
   end
 end

 def join_cult(date, cult)
   BloodOath.new(date, cult, self)
 end

 def self.of_a_certain_age(age)
   @@all.select do |follower|
     follower.age == age
   end
 end

end
