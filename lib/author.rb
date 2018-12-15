class Author

  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post = Post.new(name)
    post.author.name = self

  end

  def add_post_by_title(post)
    post = Post.new(name)
    post.author.name = self
  end
end

  def self.post_count
      @@all.size
  end

end
