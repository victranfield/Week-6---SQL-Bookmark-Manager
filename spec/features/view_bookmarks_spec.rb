require 'pg'


feature 'View bookmarks' do
	scenario 'A user can see bookmarks' do
		connection = PG.connect(dbname: 'bookmark_manager_test')

		# Add the test data
    Bookmark.create(url: 'https://https://makers.tech', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

		visit '/bookmarks'

		expect(page).to have_link('Makers Academy', href: 'https://https://makers.tech')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')

		# expect(page).to have_link ('Makers Academy', href: "https://makers.tech")
		# expect(page).to have_link ('Destroy All Software', href: "http://www.destroyallsoftware.com")
		# expect(page).to have_link ('Google', href: "http://www.google.com")
	end
end
