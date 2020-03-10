require 'pg'
class Bookmark
	def self.list_all
		if ENV['ENVIRONMENT'] = 'test'
		connection = PG.connect(dbname: 'bookmark_manager_test')
	else
		connection = PG.connect(dbname: 'bookmark_manager')
	end
	
		result = connection.exec("SELECT * FROM bookmarks;")
		result.map { |bk| bk ['url'] }
	end
end