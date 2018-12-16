class Post
   attr_accessor :post, :author, :title

  @@all = []

  def initialize(title)
    @post = post
    @title = title
    @@all << self
  end

  def posts
    @posts
  end

  def self.all
    @@all
  end

  def author_name
    if !author
      nil
    else self.author.name
    end
  end

end # << end of Post class
