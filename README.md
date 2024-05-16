# README

Project description link: [Project Description](https://www.theodinproject.com/lessons/ruby-on-rails-private-events)

Summary: Build an application which allows users to create events and then manage user signups.

- Create a User model with Devise to handle auth
- Create a Event model
- Setting up associations between two model:
  - Use `has_many` and `belongs_to` to set up the associations to show who is the creator of events and how many events a user has created.
  - Use `has_many :through` to set up the association between users and events they are attending. This will require a join table `Attendance`.
