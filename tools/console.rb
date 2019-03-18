require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


danny = Follower.new("Danny", "27", "I'm not sure why im here")
herman = Follower.new("Herman", "32", "a day at the time")
cari = Follower.new("Cari", "26", "YOLO")

flatiron = Cult.new("flatiron", "manhattan", "2013", "Run while you can")
fullstack = Cult.new("fullstack", "manhattan", "1600", "No pain no gain")
masons= Cult.new("masons", "brooklyn", "2010", "we STILL work")
illuminati = Cult.new("masons", "everywhere", "1776", "Annuit cœptis")

bloodoath1 = BloodOath.new("1776-01-01", illuminati, herman)
bloodoath2 = BloodOath.new("1995-01-20", fullstack, herman)
bloodoath3 = BloodOath.new("1992-04-20", masons, cari)
bloodoath4 = BloodOath.new("1990-12-25", flatiron, cari)

# Cult.find_by_location("manhattan")








binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
