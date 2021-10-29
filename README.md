# Photo Momento (Pho-Mo) - An Instagram-like web interface

## About

This project demonstrates skills I've I've had the opportunity to focus and improve on over the last 6 weeks, while working with Ruby, Rails, CSS, PostgreSQL, HTML, JavaScript, and application design/deployment.

The project itself is a web-based app that's designed for image sharing, similar to Instagram, and while it's not solving 'new' problems, unlike Instagram it enables the user to upload posts from their computer to the web-based/hosted app. Pho-Mo has been deployed to run off Heroku and uses the Cloudinary api as a way of storing user images for use in post-feeds and user profiles.

## Database Models - PostgreSQL

Currently the database is set up to deal with posts, comments and users. From here the required data can be taken and rendered into accociation views for returning relevant data and rendering that information on the page.

### A comment
  belongs_to :post
  belongs_to :user

### A post

  belongs_to :user, :optional => true

### A user

  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  has_many :posts


## Pages - Views

There are limited views implemented in Pho-Mo to demonstrate some of the basic application features. 

The Splash/Home page enables users to log in or sign up. 

When a user logs in the are sent to the posts page (currently listing all posts as follows and following models are not set up). The system determines if they are an administrator and they are rendered views based on this flag. This log-in process handles basic invalid data issues, not great styling though and needs refining. This functionality is what I am most happy with.

Administrators are the only users allowed to delete accounts and have the option of editing anyone else's account if required.

The add posts view allows the user to upload images from their computer to Cloudinary, with a location and a description. These posts are assigned a user_ID. This view is yet to be styled. 

There is a post detail view that shows the full-size image and location. I'm yet to format this view and I have to implement the delete posts action. For non-admin users.

The user page displays like the Instagram profile page and this is probably the page I am most happy with.

The edit user view allows the user to edit their profile (avatars are currently links rather than file uploads). They can update their details and the only required fields are Email & Password. This causes issues with styling on the user profile page which is something that needs to be worked on.

## Next steps for Pho Mo

Comments views are not yet implemented - so this will be next to implement.

Follows and followers are also high on the implementation list.

Adding the location to the post via a geocoder or Google APIs

Responsiveness is not implemented.

## Problem points

Working everything into a week.

Demo - forgetting the format of the fake email addresses 🤣️ & changing the users_controller to check for login without naming up exceptions 

Question about time and assets - I had some assets from another project that was a prototype, but the code needed to be rewritten in CSS for Ruby on Rails to get the way I wanted it to be presented.

## Quick application stats

* Ruby version

    ruby '2.6.2'


* System dependencies

    gem 'bcrypt', '~> 3.1.7'
    gem 'cloudinary'
    gem 'pg', '>= 0.18', '< 2.0'
    gem 'rails_12factor', group: :production

* Database creation

    Used migrations and seed data to set-up the schema and tables via command line with Rails

* Deployment instructions

    Heroku 18 
        ```heroku create --stack heroku-18```

    Deployed to Heroku. Run each update:
        * rails db:migrate
        * rails db:seed
        * git add .
        * git commit -m "your message"
        * git push origin master
        * git push heroku master
        * heroku run rails db:migrate
        * heroku run rails db:seed
        * heroku open
