# Photo Momento (Pho-Mo) - An Instagram-like web interface

Live demo on Heroku:
https://pho-mo.herokuapp.com/login

Code on GitHub:
https://github.com/tracey-web/pho-mo


## About

This project demonstrates skills I've had the opportunity to focus and improve on over the last 6 weeks, while working with Ruby, Rails, CSS, PostgreSQL, HTML, JavaScript, and application design/deployment.

The project itself is a web-based app that's designed for image sharing, similar to Instagram, and while it's not solving 'new' problems, unlike Instagram it enables the user to upload posts from their computer to the web-based/hosted app. Pho-Mo has been deployed to run off Heroku and uses the Cloudinary api as a way of storing user images for use in post-feeds and (eventually) user profiles.

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

When a user logs in the are sent to the posts page (currently listing all posts as follows and following models are not set up). The system determines if they are an administrator and they are rendered views based on this flag. This log-in process handles basic invalid data issues. The errors are not good from an aesthetic perspective though and this feature needs refining and extending to more parts of the application. This admin/view functionality is what I am most happy with in this project.

Administrators are the only users allowed to delete accounts and have the option of editing anyone else's account and editing their posts if required.

The add posts view allows the user to upload images from their computer to Cloudinary, with a location and a description. These posts are assigned a user_ID. This view is yet to be styled. 

There is a post detail view that shows the full-size image and location. I'm yet to format this view and I have to implement the delete and update posts action for non-admin users.

The user page displays like the Instagram profile page and this is probably the page design I'm most happy with. I need to work on cropping the images to make them square as they are only displaying as square if they are already square or in profile aspect (not landscape). 

The edit user view allows a user to edit their profile (avatars are currently links rather than file uploads, this needs to be extended to enable them to upload to Cloudinary). They can update their details and the only required fields are Email & Password (I aim to make a username compulsorary as well). Using an email as a main user identifier, rather than a name or username, causes issues with styling on the user profile page which is something that needs to be worked on.

## Next steps for Pho Mo

Comments views as they are not yet implemented.

Follows and followers are also high on the implementation list.

Adding the location to the post via a geocoder or Google APIs (based on the user's browser). 

Responsiveness is not implemented.

## Problem points

Working the whole project (from concept to delivery) into a week.

Demo - forgetting the format of the fake email addresses 🤣️ & changing the users_controller.rb at the last minute to check for login without naming up exceptions [:new, :create] 🙄️

Missing post comments and other functionality, the tendency to move into the UX/UI before CRUD was 100% complete and focusing too much on design.

## Design

Question during the demo about time and assets - I had some assets from another project that was a prototype (no backend and mostly image-based), but for this project the code needed to be rewritten to get the way I wanted it to be presented. The Ruby/Rails code needed to be fitted with HTML5, as well the CSS3 and to actually be wired up to the database so it could be used as a CRUD system/social media platform. 

The whole design of these site assets is my own from the logo, to the background image, to the favicon. These assets were created in Adobe Photoshop. The logo was done using Google Fonts. Site icons are all from Font Awesome. It was a great exercise in design thinking to work out how Instagram approached their application design and fun problem-solving how to get it done and similar to the Instagram UX/UI as a single person rather than a team of experts. 

## Usage

1. Click Sign-up to create a user account with an email and password (confirm password)
    * contact me if you'd like access to admin rights (see all users and remove user profiles)
2. After login click the + icon in the top-right of the navigation menu to add a post
    * upload a picture from your computer. Give it a description and location.
3. Click the profile picture icon in the top right navigation menu to view the image on your profile.
4. Click the home picture icon in the top righ or the 'Photo Momento' logo in the top left to navigate to the 'all posts' feed.

Features to come are:
* adding comments, 
* liking posts and,
* following other users


## Quick application stats

* Ruby version

    ruby '2.6.2'

* System dependencies (additional)

    `gem 'bcrypt', '~> 3.1.7'`

    `gem 'cloudinary'`

    `gem 'pg', '>= 0.18', '< 2.0'`

    `gem 'rails_12factor', group: :production`


* Database creation

    Used migrations and seed data to set-up the schema and tables via command line with Rails. Database is [PostgreSQL](https://www.postgresql.org/download/linux/ubuntu/ "Download PostgreSQL for Ubuntu").

* Image storage

    [Cloudinary](https://cloudinary.com/ "Cloudinary's Homepage")

* Deployment:

    Heroku 18 - (because Ruby 2.6.2)
        ```heroku create --stack heroku-18```

    Deployed to Heroku. Run each update:
     ```rails db:migrate
        rails db:seed
        git add .
        git commit -m "your message"
        git push origin master
        git push heroku master
        heroku run rails db:migrate
        heroku run rails db:seed
        heroku open```
