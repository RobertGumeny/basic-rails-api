# README

This is a very basic REST API built with Ruby on Rails, providing basic CRUD functionality for a collection of articles.

### Article Model (app/models/article.rb)

Validation to make sure each article has a title and a body.

### Article Controller (app/controllers/articles_controller.rb)

Sets up functions from Creating, Reading, Updating, and Deleting articles.

### Routes (app/config/routes.rb)

Establishes route to hit to gain access to endpoints.

### Database seeder (app/db/seeds.rb)

Using Faker gem, simply enter rails db:seed to generate 5 random articles with a title and a body.
