class BloodOath

  attr_reader :date, :cult, :follower

  @@all = []

  def initialize(date, cult, follower)
    @date = date
    @cult = cult
    @follower = follower

    @@all << self
  end

  def self.all
    @@all
  end

end
