require_relative './author.rb'
require_relative './magazine.rb'
require_relative './article.rb'

# Creating instances of Author
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

# Creating instances of Magazine
magazine1 = Magazine.new("Tech Times", "Technology")
magazine2 = Magazine.new("Sports Weekly", "Sports")

# Creating instances of Article and associating with authors and magazines
article1 = Article.new(author1, magazine1, "The Future of Technology")
article2 = Article.new(author1, magazine2, "The Rise of Sports Analytics")
article3 = Article.new(author2, magazine1, "Artificial Intelligence in Gaming")

# Testing the implemented methods
puts "Author name: #{author1.name}"
puts "Magazine name: #{magazine1.name}"
puts "Magazine category: #{magazine1.category}"
puts "All magazines: #{Magazine.all.map(&:name)}"

puts "Author's articles: #{author1.articles.map(&:title)}"
puts "Author's magazines: #{author1.magazines.map(&:name)}"
puts "Author's topic areas: #{author1.topic_areas}"

puts "Magazine contributors: #{magazine1.contributors.map(&:name)}"
puts "Find magazine by name (Tech Times): #{Magazine.find_by_name('Tech Times').name}"

puts "Magazine article titles: #{magazine1.article_titles}"
puts "Contributing authors (more than 2 articles): #{magazine1.contributing_authors.map(&:name)}"
