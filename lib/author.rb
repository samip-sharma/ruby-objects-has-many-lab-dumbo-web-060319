class Author
  attr_accessor :name , :posts
  def initialize(name)
    @name = name
    @posts =[]
  end

  def add_post(post)
    posts << post
    post.author=self
  end

  def add_post_by_title(name)
    new_post=Post.new(name)
    self.posts << new_post
    new_post.author =self
  end

  def self.post_count
  Post.all.length
  end

end
