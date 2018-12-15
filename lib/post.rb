class Post

  attr_accessor :title, :author


  @@all =[]

  def initialize(title)
    @title = title
    @author= author
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name
  end

  def new
    Post.new(title)
    @@all << self
  end


end
