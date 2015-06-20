class Blog

def initialize
@created = Time.now
puts "My Blog"
@title = gets.chomp
@all_posts = []
@total_posts = 0
end

def create_post
new_post = Post.new
puts "my blog..."
@total_post +=1
end

def collect_posts
return @all_posts
end

def publish(all_posts)
all_posts.each do |post|
puts Post.title
puts Post.create_post
puts post.content
end

end
end

class Post

def initialize
@created_post = Time.now
puts "my blog..."
@title = gets.chomp

puts "my blog content"
@content = gets.chomp
end

def edit_content
puts "new blog"
@title = gets.chomp

puts "new blog text"
@content = gets.chomp
end
end

my_blog = Blog.new
first_blog = my_blog.create_post
all_blog_posts = my_blog.collect_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)

