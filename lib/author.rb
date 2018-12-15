class Author

  attr_accessor :name

  @@all =[]

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(name)
    post = Post.new(name)
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(name)
    post.author.name = self
  end


  def self.post_count
      Post.all.count
  end

end
