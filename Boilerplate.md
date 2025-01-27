**Boilerplate**

Start from Le Wagon’s Rails Minimal Template:

rails new \
  -d postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/minimal.rb \
  rails-authentication

cd rails-authentication

**Installation**

# Gemfile
gem "devise"
bundle install
rails generate devise:install

**Configuration**

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "pages#home"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

**Initializer**

# config/initializers/devise.rb
# [...]
# ==> Mailer Configuration
# Configure the e-mail address which will be shown in Devise::Mailer,
# note that it will be overwritten if you use your own mailer class
# with default "from" parameter.
config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

**Devise user**

Generate the User model with the devise generator:

rails generate devise User
#      invoke  active_record
#      create    db/migrate/TIMESTAMP_devise_create_users.rb
#      create    app/models/user.rb
#      insert    app/models/user.rb
#       route  devise_for :users

This creates the User model and its migration. So run:

rails db:migrate

**Generated model**

# app/models/user.rb

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

**Generated routes**

rails routes | grep user
#        new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#            user_session POST   /users/sign_in(.:format)        devise/sessions#create
#    destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#       new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#      edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#           user_password PATCH  /users/password(.:format)       devise/passwords#update
#                         PUT    /users/password(.:format)       devise/passwords#update
#                         POST   /users/password(.:format)       devise/passwords#create
#cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#   new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#  edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#       user_registration PATCH  /users(.:format)                devise/registrations#update
#                         PUT    /users(.:format)                devise/registrations#update
#                         DELETE /users(.:format)                devise/registrations#destroy
#                         POST   /users(.:format)                devise/registrations#create

**Navigational Format**

Uncomment the line and add :turbo_stream as a navigational format:

# config/initializers/devise.rb

# ==> Navigation configuration
# Lists the formats that should be treated as navigational. Formats like
# :html, should redirect to the sign in page when the user does not have
# access, but formats like :xml or :json, should return 401.
#
# If you have any extra navigational formats, like :iphone or :mobile, you
# should add them to the navigational formats lists.
#
# The "*/*" below is required to match Internet Explorer requests.
config.navigational_formats = ['*/*', :html, :turbo_stream]

**Sign up**

rails s
Go to localhost:3000/users/sign_up

**Console**

# rails console
User.last

**Views**

Helpers
user_signed_in?
# => true / false

current_user
# => User instance / nil

**Navbar**

You need a Log in / Logout logic.

You can start from this navbar template:

mkdir app/views/shared
curl https://raw.githubusercontent.com/lewagon/awesome-navbars/master/templates/_navbar_wagon.html.erb > app/views/shared/_navbar.html.erb
curl https://raw.githubusercontent.com/lewagon/fullstack-images/master/logo.png > app/assets/images/logo.png
<!-- app/views/layouts/application.html.erb -->
<!-- [...] -->
<%= render "shared/navbar" %>

**Alerts**

touch app/views/shared/_flashes.html.erb
<!-- app/views/shared/_flashes.html.erb -->
<% if notice %>
  <div class="alert alert-info alert-dismissible fade show m-1" role="alert">
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    <%= notice %>
  </div>
<% end %>
<% if alert %>
  <div class="alert alert-warning alert-dismissible fade show m-1" role="alert">
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    <%= alert %>
  </div>
<% end %>
<!-- app/views/layouts/application.html.erb -->
<!-- [...] -->
<%= render "shared/flashes" %>

**Customize devise views**
  
Log in / Sign up / Forget password / etc

rails generate devise:views
And look into app/views/devise folder.

**Controller**

White-list approach
Protect every route by default:

# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

**Skipping login for some pages**

# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end

**Adding attributes to User**

What if we want to add a first_name and last_name at sign up?

Create a migration to add these columns in the users table.
Add new fields in Devise’s sign up and account update forms.

**Update the controller:**

class ApplicationController < ActionController::Base
  # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end

**Read more in the documentation**

**Extra Resources**

The full source code of the lecture is available on GitHub

Happy authenticating!


**Create a repo - Hacker’s version**

cd ~/code/YOUR_GITHUB_USERNAME
rails new \
  -d postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/minimal.rb \
  rbnb

cd rbnb
Reminder: the minimal template created the first commit.

**You still need to create your GitHub repo with:**

gh repo create --public --source=. # will create a public repo on GitHub
Which creates the repo on GitHub and adds the origin remote to your local repo.

