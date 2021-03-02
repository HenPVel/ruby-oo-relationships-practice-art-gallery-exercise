class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist_inst, gallery_inst)
    @title = title
    @price = price
    @artist = artist_inst
    @gallery = gallery_inst
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.map{|paint_inst|paint_inst.price}.reduce(0){|sum,num|sum+num}
  end



  
end
