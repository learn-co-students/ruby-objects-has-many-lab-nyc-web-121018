class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title, *author)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if !author
      nil
    else
      self.author.name
    end
  end
end
