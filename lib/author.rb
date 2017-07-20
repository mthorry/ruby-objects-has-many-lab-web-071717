# An author should have many posts and a post should belong to an author.

class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title_name)
    post = Post.new(title_name)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end