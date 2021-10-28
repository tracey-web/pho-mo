User.destroy_all

User.create(:email => 'traceylea9@gmail.com', :password => 'chicken', :username => 'digitalPye', :name => 'Tracey Hill', :dob => '1993-08-22', :avatar => 'https://images.unsplash.com/profile-1635117244798-f7f8c30ee91eimage?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'Artist, educator and software engineer. Book nerd who eats like royalty.', :admin => true);
User.create(:email => 'testemail6@gmail.com', :password => 'chicken', :username => 'charlottelharrison', :name => 'Charlotte Harrison', :dob => '1988-20-12', :avatar => 'https://images.unsplash.com/profile-1620142405492-8002521cec6aimage?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'In 2010 I graduated from Goldsmiths, University of London. Since then I have worked for leading design agencies, Design Bridge and FITCH. Photography is a passion, which often crosses into my daily work. I specialise in street & portrait photography.');
User.create(:email => 'testemail1@gmail.com', :password => 'chicken', :username => 'el_ego', :name => 'Elena Gordienko', :dob => '1993-02-25', :avatar => 'https://images.unsplash.com/profile-1596560596229-75e397c42c34image?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'Я абрикос, на юге рос');
User.create(:email => 'testemail2@gmail.com', :password => 'chicken', :username => 'pixworthmedia', :name => 'Eriks Abzinovs', :dob => '1972-07-18', :avatar => 'https://images.unsplash.com/profile-1563200334273-0a1336be3e34?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'Seeing life through a lens began as a hobby for me, however, it quickly developed into a passion and an outlet for my creativity. the quality of the image and trying to deliver something unique is a key part of my photography');
User.create(:email => 'testemail3@gmail.com', :password => 'chicken', :username => 'mattpopovich', :name => 'Matt Popovich', :dob => '1981-09-08', :avatar => 'https://images.unsplash.com/profile-1486040440552-1864100ad7c3?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'Every photo I upload, including those published after June 2017, has been previously dedicated to the public domain under a CC0 1.0 license.');
User.create(:email => 'testemail4@gmail.com', :password => 'chicken', :username => 'yokosaito', :name => 'Yoko Saito', :dob => '1983-12-12', :avatar => 'https://images.unsplash.com/profile-1558935199453-e6a5fbee3b7e?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'photographer');
User.create(:email => 'testemail5@gmail.com', :password => 'chicken', :username => 'kristinadelp', :name => 'Kristina Delp', :dob => '2002-08-04', :avatar => 'https://images.unsplash.com/profile-1609522357713-7de8f47be60bimage?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff', :bio => 'connecticut cinematographer
a place for my still photography');

puts "#{ User.count } users created."

Post.destroy_all

Post.create(:photo => 'https://images.unsplash.com/photo-1612185447368-a46e8094e2d5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1612090489399-2f60e1d5e15b?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1611743139239-2d87c5140dc8?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8M3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1608736328531-fbbdd1ccba71?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1603835892619-223c85e588c9?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1601568470023-9e5203c3712f?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1603817895210-ee1f99562fb1?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1603817895210-ee1f99562fb1?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1601547903304-f44f3b054d49?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTB8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');
Post.create(:photo => 'https://images.unsplash.com/photo-1599691823377-545103b0137c?ixid=MXwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTF8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', :location => 'London');

puts "#{ Post.count } posts created."