class Search < ActiveRecord::Base
	def search_posts
		posts = Post.all
		posts = posts.where(["title LIKE ?","%#{keyword}%"]) if keyword.present?
		posts = posts.where(["category LIKE ?", category]) if category.present?
		posts = posts.where(["price >= ?", minprice]) if minprice.present?
		posts = posts.where(["price < ?", maxprice]) if maxprice.present?
		return posts
	end

end
