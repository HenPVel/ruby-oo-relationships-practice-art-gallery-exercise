class Gallery

  attr_reader :name, :city

  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self

  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint_inst| paint_inst.gallery==self}
  end

  def artists
    paintings.map{|paint_inst|paint_inst.artist}
  end

  def artist_names
    paintings.map{|paint_inst|paint_inst.artist.name}
  end

  def self.most_expensive_painting
    x=Painting.all.map{|paint_inst|paint_inst.price}.index(Painting.all.map{|paint_inst|paint_inst.price}.max)
    Painting.all[x]
  end

end
