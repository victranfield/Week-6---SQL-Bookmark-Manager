require 'pg'


feature 'View bookmarks' do 
	scenario 'A user can see bookmarks' do 
		connection = PG.connect(dbname: 'bookmark_manager_test')

		# Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://https://makers.tech');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
		
		visit '/bookmarks'

		expect(page).to have_content "https://makers.tech"
		expect(page).to have_content "http://www.google.com"
		expect(page).to have_content "http://www.destroyallsoftware.com"
	end
end