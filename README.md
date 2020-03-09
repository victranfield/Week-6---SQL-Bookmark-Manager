# Week-6---SQL-Bookmark-Manager

Bookmark Manager
This week, you will build a web app that stores web bookmarks in a database.

Learning objectives
Goals for the week
Ask yourself the same two questions:

Are you having fun?

Are you a better developer than you were yesterday?

Primary goal
By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

Can you build a web app that uses a database?
Reminder of all this week's goals from the Week Outlines
By the end of the week all developers can:

Build a simple web app with a database (this pirmary goal breaks down into the two sub-goals below)
Follow an effective debugging process for database applications
Explain the basics of how databases work (e.g. tables, SQL, basic relationships)
Main focuses for this week
Agile and TDD
Engineering and 'Dev Recipes'
Databases
Tooling
As well as these things, you'll deepen your understanding of many of the skills and concepts from week 3.

The Learning Objectives are available in more detail here.

The project
You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

User Interface Sketch (Hi-Fi)
This is the basic view of the website. You will build it by working through the sequence of challenges. As you go on, we will be challenging you to extend the functionality of this website.



Learning, not challenge progress
The challenge material is pretty tough this week. You're not meant to get through it all. As always at Makers, focus on deep learning, rather than progression through the challenges.

Sequence & Schedule
Onsite
Remote
Challenges
Creating User Stories
Setting up a Web Project
Viewing bookmarks
Setting up a Database
Creating your First Table
Manipulating Table Data
Interacting with Postgres from Ruby
Upgrading your Toolset
Setting up a Testing Environment
Creating bookmarks
Wrapping Database data in program objects
Deleting bookmarks
CRUD
Extracting a Database Setup object
Validating bookmarks
One to Many Relationships
Many to Many Relationships
Registration
Authentication
Post Challenges
🚧

If you finish the walkthrough, try implementing some of these extra challenges:

Linking Bookmarks to a User
At the moment logging in doesn't change the user experience much. Can you extend the application so that:

A user has to be logged in to add or view Bookmarks
A user can only read/update/delete bookmarks they have added
Deleting Bookmarks with Comments and Tags
Have you tried deleting a Bookmark that has a Comment or a Tag? You might notice an error! Can you use TDD to resolve this error, and allow the user to delete a Bookmark that has Comments and/or Tags?

Improve User Interface
At the end of the walkthrough we are left with a number of unlinked routes. Can you improve the user experience by linking the pages together? Don't forget to test drive these changes!

Automate Migrations
You should have a number of .sql files that have the individual migration steps required to set up the databases. Can you use these to set up Ruby methods to run each SQL command? You could then run these methods to do the database setup in test and development.
