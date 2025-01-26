# pitch-perfect

**Feature Generation Process Quick Reference**

**********************************************************************************************************************************************************************************************

Always start with the core models in your app that all future features will depend on 
In Airbnb’s case, they are User and Flat 
Once these models are integrated, it becomes easier to split work on the remaining features 

As a kick-off phase, you can therefore separate two main tasks:

**********************************************************************************************************************************************************************************************

Team #1 - Model kick-start:

1. Integrate User with Devise sign-in/signup
2. Integrate Flat with listing (index) and creation (new/create)

**********************************************************************************************************************************************************************************************

Team #2 - Front-end kick-start:

1. Work on a clean layout with navbar/footer
2. Build a simple, attractive home page
3. Once both groups are done (it should take you around 2 hours each) 
4. and once you have all merged your work on GitHub 
5. you can move on and split tasks for the remaining feature

**********************************************************************************************************************************************************************************************es

Tasks organization

Here is a list of different user stories to implement on the Airbnb project:

As a user, I can navigate the website from the navbar (with functional links, e.g. “sign-in/signout”, “My bookings”, “Publish an offer”, etc.)
As a user, I can view a flat’s page
As a user, I can book a flat
As a user, I can add pictures for my flat
As a user, I can add reviews for a flat I’ve stayed in
As a user, I can locate flats on a map
As a user, I can log in with Facebook
As a user, I can receive an email when someone books my flat

**********************************************************************************************************************************************************************************************

NOTE: Some of these features are more important than others. It’s your role to prioritize them to get an MVP at the end of the week!

**********************************************************************************************************************************************************************************************

**FEATURE EXAMPLE: Book a flat**

When you work on a feature, work on it conscientiously from the database to the HTML/CSS 

Let’s take the example of the “booking” feature:

**********************************************************************************************************************************************************************************************

MODEL

I will create a Booking model and its associated migration
Then I will write a working model with associations and validations
I will then crash-test my model from the rails console to make sure everything in the model works

**********************************************************************************************************************************************************************************************

ROUTING:

I will add bookings routes in routes.rb

**********************************************************************************************************************************************************************************************

CONTROLLER:

I will create a new BookingsController with the create and index actions
I will implement these two actions

**********************************************************************************************************************************************************************************************

VIEWS MODIFICATION:

I will embed the booking form in the existing views/flats/show.html.erb
I will list all current user’s bookings on a new page views/bookings/index.html.erb

**********************************************************************************************************************************************************************************************

LINKS:

I will add a link to the bookings#indexpage in the navbar

**********************************************************************************************************************************************************************************************

HTML/CSS:

CHECK 1. My booking form is clean with the correct Bootstrap classes for the inputs and buttons

CHECK 2. My new bookings page is clean with a container to center the content, clear headers, and a clean design for each booking

CHECK 3. I will take time to refactor my HTML using partials if my HTML code is too long and hard to read

SUPER: Code it perfectly, from model to view BOOM!!! #MarcoMode

NOTE: 

1. Crash test all your model associations and validations in the rails console

2. Don’t neglect the view 

3. If you add a form, make it a nice, centered, and responsive Bootstrap form 

4. If you code a flats list, build a nice Bootstrap grid (for example, with flat picture on the left and flat info on the right..)

5. Use partials to refactor your HTML and make it more readable and maintainable
