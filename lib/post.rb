class Post
  attr_accessor :title, :author, :post
  @@all = []

  def initialize(title)
    @title = title
    @post = post
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end
