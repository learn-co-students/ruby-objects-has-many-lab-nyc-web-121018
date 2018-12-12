class Author
  @@counter  = 0
  attr_accessor :name, :genre
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
    @posts
  end 
  
  def add_post(title)
    title.author = self
    @posts << title 
    @@counter +=1
  end
  
  def add_post_by_title(title)
    post1 = Post.new(title)
    post1.author = self
    @posts << post1
    @@counter +=1
  end 
  
  def self.post_count
    @@counter 
  end
end