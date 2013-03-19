Product_Feed_App for ITR!
=====================

Heroku Error Notes: 
----------------------

Was unable to load to heroku correctly: 
http://infinite-forest-4853.herokuapp.com/

heroku logs:

	PG::Error: ERROR:  relation "products" does not exist
	: ALTER TABLE "products" ALTER COLUMN "price" TYPE decimal

This error is after a heroku migrate & restart and after another error
(relation "users" does not exist) occured. 

**Any idea why it hates my mogrations? Is it because of my terrible early migration class names?**

Accomplishments:
----------------------

Pretty satisfied, as I got through most of my ITR Project Proposal list (minus the social features). Really glad I chose this type of project, since it replicates many major features that modern web development includes.

Also figured out how to add user avatars into the homepage feed yesterday, which is awesome :)

Continuing Work / Questions:
----------------------

Still have lots to do. Need to validate users to limit their access - right now a member can go to another member's profile and edit their site. I think I can look up Devise docs for this?

Also have been trying to attach links to images - specifically the person's avatar and image (avatar should link to user profile, product image should link to product page). StackOverflow suggested something like this:

	<%= link_to -- do %>
 		<%= image_tag product.user.image_url(:small_avatar, @user).to_s %>
	<% end %>

But when I add 'product.user.username, product.user' to the link_to, it blows up. 

**Any thoughs?**


Future Plans:
----------------------

For My App:
Integrate social. I'd like to play with different social features from many different sources. Once the app is complete, I'd really like to play with Ruby Motion.

In General:
I'm going to continue to focus on Ruby/Rails exclusively for the next several months & have tons of tutorials and demo projects that I can build. Really enjoying this, so I want to get good at it! :)

**THANKS!**
----------------------
Thanks to all of General Assembly, the class kicked ass!


