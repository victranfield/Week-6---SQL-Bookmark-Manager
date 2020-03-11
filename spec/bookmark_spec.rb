require 'bookmark'

describe Bookmark do 
	describe '.list_all' do 
		it 'returns all bookmarks' do 
			connection = PG.connect(dbname: 'bookmark_manager_test')

			connection.exec("INSERT INTO bookmarks (url) VALUES ('https://makers.tech');")
    	connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    	connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")

			bookmarks = Bookmark.list_all

			expect(bookmarks).to include("https://makers.tech")
    	expect(bookmarks).to include("http://www.google.com")
    	expect(bookmarks).to include ("http://www.destroyallsoftware.com")
		end
	end

	describe '.create' do 
		it 'creates a new bookmark' do 
			Bookmark.create(url: 'http://testbookmark.com')

			expect(Bookmark.list_all).to  include 'http://testbookmark.com'
		end
	end

end
