# pitch-perfect

The kick off will encompass the following parts:

Product Design 🤔
  User Stories
  DB Schema
  Routes & Mockup
Building 🛠
  Rails New
  Models/Controllers
  Figma
Project Management
  Kanban Board
  Domain Name
  Team Slack Channel
For each step of Product Design, you must put in a ticket to get it validated by a TA before proceeding.

During the Building phase, pair-programming is strongly recommended to generate the core models and the main controllers before dispatching the user stories to team members.

At the end of Kick-off,

1.  your Github repo should be created and your local work in progress pushed
2.  your Heroku app should be up to let you deploy continuously during the next sessions
3.  all your projects urls should be submitted on your product page

DB Schema

  Next up, open Kitt’s DB schema builder and figure out the database schema needed for your user stories. This is usually the trickiest bit of the day, and it can be easy to get carried away. Spend time talking it out amongst your group, focusing on your core user journey. What kind of relationships do you have in your app – 1:N, N:N? If you have any N:N relationships, don’t forget to include your join tables.

  If you notice your schema is getting rather large (i.e. more than 6 tables), think about scaling it down to the must haves that you determined above. It’s always better to start small with an approachable schema than to start with an overly complicated schema. Complicated schemas == dependencies == hard to divide features and get your MVP up and running in time. Instead, divide it into stages based on priority. Once you accomplish one stage, move onto the next and update the schema if needed. Repeat until done (or you run out of time 😅).

Done? Put in a ticket to validate with a TA before proceeding further.

Routes & Mockup

  Open your Figma from the Product Design Sprint and see if the user flow still matches what your team has in mind. If it doesn’t, take some time to think about it as a team, and rework your wireframe based on the flow you’ve decided on. You can use a tool like Whimsical or Excalidraw to keep it super basic and clear. At this point, your Figma is still a wireframe. Now is not the time to start adding your visual identity, you will have more time later to work on a high-fidelity version.

  Based on your user stories and the different screens of your wireframe, figure out the routes for each and add them to your spreadsheet, along with the corresponding controller and action.

Done? Put in a ticket to validate with a TA before proceeding further.

Rails New
First, decide amongst your team who will be the Lead Developer for this project. This can be the same person from your Airbnb project, or a new team member can give it a go. That person will then continue with the following steps for setting up the app.

When starting your rails project, you must use one of the Wagon Rails Templates. Make sure you use the Devise template if you need a User model!

After the app is created, create your Github Repository and add all teammates as collaborators. Check out the Github lecture slides for an overview of the process.

Then create the Heroku app and do your initial deploy. Check out the Heroku lecture slides if you need a refresher on the steps.

Tip: always run heroku run rails db:migrate after pushing to Heroku to make sure your production database is up to date with any changes.

Pair Programming
It is hard to split the work and have everyone starting to code on an empty project. Start by generating your core models on the lead developer’s machine, in pair-programming. Make sure you follow thoroughly the DB schema that was validated by the teaching staff. You can refresh your Active Record knowledge here if you’d like before starting to create your models.

Always start by generating the models that do not reference other models. Remember the syntax?

# Generic syntax
  rails g model ModelName column:type

# For instance
  rails g model Pet name:string user:references
  
Once you generated all your models, don’t forget to run

  rails db:migrate

  Note: Some of your schemas may have more advanced relationships and foreign keys than we saw during Airbnb week. For example, a table that may need to store two instances (foreign keys) from another table (most often the User table). In this case you’ll need to use something called aliases. Learn how to implement them with this guide on advanced Active Record.

Once done, open your models and go on with associations and validations 👌

Controllers

  Before splitting the work, you can also consider generating the main controllers (keep empty at this point).

# Generic syntax
  rails g controller model_name_plural

# For instance
  rails g controller pets

At this point you should be ready to commit or merge this work to master and start dispatching the work in the team. Branching becomes mandatory at this stage!

Figma

  As you likely found out during Airbnb Week, having a thorough and fully fleshed-out Figma can make a world of a difference for your team’s working process. Knowing exactly what each feature should look like, with a consistent design pattern, is what takes your app to the next level!

  While you created your initial mockup on the Product Design Sprint, now is the time to take another look and update it based on the decisions you & your team made earlier about user stories, routes, etc.
  
  Figma is an incredible tool with loads of cool features that you can utilize here to make a high-fidelity prototype. Make sure to create your components library, add some plugins like unsplash, color palettes and explore even more in the community section.

Choose a team member to work on improving the Figma while the others continue with the remaining tasks.

Project Management - KANBAN Boards

Github Projects Draft - To set up your kanban board on Github, you’ll need to have the repository created already and to have all the collaborators added. Then, a team member can use this board as the basis for your project board. Follow the instructions here to see how to copy and add the board to your own project’s repository. Two things to note: Github doesn’t copy over the cards from the original board, so you’ll have to add them yourself. Feel free to copy/paste the cards to get you going, or just start from scratch. Second, Github uses markdown syntax for text formatting like headings, font style, and checkboxes. It’s not required, but can be nice to add formatting to your cards. You can read more about it here.

Having a custom domain name will make your MVP seem much more legit than using the free .herokuapp.com url. We recommend using Namecheap to buy your domain name. Please follow this guide to purchase and setup your custom domain. Then follow this guide to setup your SSL certificate.

Please note that Le Wagon is an official partner of GitHub since 2015. Hence, our partnership allows you to redeem an access to the Github Student Developer Pack. You can find all the info here. There is a special offer for Namecheap if the domain name registers with a .me TLD.
