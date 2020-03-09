
feature 'View bookmarks' do 
	scenario 'A user can see bookmarks' do 
		visit '/bookmarks'
		expect(page).to have_content "https://makers.tech"
		expect(page).to have_content "https://www.google.com"
		expect(page).to have_content "https://www.destroyallsoftware.com"
	end
end