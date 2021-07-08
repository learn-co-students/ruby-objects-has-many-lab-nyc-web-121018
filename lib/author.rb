class Author

  @@all = []

  attr_accessor :name

  def initialize(name)
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

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title, self)
  end

  def self.post_count
    all_posts = Post.all.select do |post|
      post.author.class == self
    end
    all_posts.count
  end

end
