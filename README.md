# Student DB

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version- 2.4.0
  rails version- 5.2.4
  Database - sqlite3


#User and Authentication using devise
  Steps
1. Add gem 'devise'
2. bundle install
3. rails generate devise:install
4. config/environments/development.rb--> Add (config.action_mailer.default_url_options = { host: 'localhost', port: 3000 })
5. rails generate devise User
6. Add Registration controller for custom fields
7. Registration for User
8. Add columns to Users table
9. rails db: migrate
10. change in route.rb
All the features of the system should be available for only logged in users.

#Student search:

1. Student can search student list in home Page
2. Search based on Student Name
3. Search based on Institution Name
   Development Logic
   logic in index action of student controllers

#Student list sort
1. User can sort list based on student name
   Logic define private sort_column method in student_controller
2. Develop Pagination Feature without using gem

#Student Registration 
1. Api call for http://localhost:3000/api/students
2. The link to url should be public in the landing page, no login required.
3. A student can publicly access this url and register his details using this form (form should save to the Student model).
4. Logged in users can see the students registered via this form under a link 'Pending Students' (You have to create this page).
5. Logged in users also can delete a Student in this list using a 'Delete' link.


