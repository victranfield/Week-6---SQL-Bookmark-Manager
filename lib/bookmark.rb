require 'pg'
class Bookmark
	def self.list_all
		connection = PG.connect(dbname: 'bookmark_manager')
		result = connection.exec("SELECT * FROM bookmarks;")
		result.map { |bk| bk ['url'] }
	end
end