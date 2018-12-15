class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    newPost = Post.new(post_title)
    newPost.author = self
    @posts << newPost
  end

  def self.post_count
    Post.all.length
  end


end #end of author class
