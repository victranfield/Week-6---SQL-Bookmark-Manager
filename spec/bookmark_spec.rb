require 'bookmark'

describe Bookmark do 
	describe '.list_all' do 
		it 'returns all bookmarks' do 
			bookmarks = Bookmark.list_all

			expect(bookmarks).to include("https://makers.tech")
    	expect(bookmarks).to include("http://www.google.com")
    	expect(bookmarks).to include ("http://www.destroyallsoftware.com")
		end
	end
end