class Author 
  attr_accessor :name  
 
  def initialize(name)
    @name = name  
  end 
  
  def posts
    Post.all.select {|post| post.author == self}
  end 
  
  def add_posts(post)
    post.author = self
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end 
end 