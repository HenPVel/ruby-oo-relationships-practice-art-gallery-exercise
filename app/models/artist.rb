class Artist

  attr_reader :name, :years_experience

  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self

  end

  def self.all
    @@all
  end
  
  def paintings
    Painting.all.select{|paint_inst|paint_inst.artist==self}
  end

  def galleries
    paintings.map{|paint_inst|paint_inst.gallery}
  end

  def cities
    paintings.map{|paint_inst|paint_inst.gallery.city}
  end

  def self.total_experience
    Artist.all.map{|artist_inst|artist_inst.years_experience}.reduce(0){|sum,num|sum+num}
  end

  def self.most_prolific
    num_of_paintings=Artist.all.map{|artist|artist.paintings.length.to_f}
    years_of_experience=Artist.all.map{|artist|artist.years_experience}
    ratio_array=(0..num_of_paintings.length-1).map{|i| num_of_paintings[i]/years_of_experience[i]}
    x=ratio_array.index(ratio_array.max)
    Artist.all[x]

  end 
  
  def create_painting(title,price,gallery_inst)
    Painting.new(title,price,self,gallery_inst)
  end



end
