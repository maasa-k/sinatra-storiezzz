# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app:   Corneal gem, a Sinatra app generator, was used to begin the framework.
- [x] Use ActiveRecord for storing information in a database:   The model classes inherit from ActiveRecord.
- [x] Include more than one model class (e.g. User, Post, Category):   User, Dream
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts):   User has_many Dreams
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User):   Dream belongs_to User
- [x] Include user accounts with unique login attribute (username or email):   Validation for uniqueness is true in User model
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying:   Routes for creating a new dream, viewing a dream/s, editing and updating a dream, and deleting a dream are present and working propertly in DreamsController.
- [x] Ensure that users can't modify content created by other users:   In order to proceed with modification of a dream that has been posted, the user id of that particular dream must match with the current user's id. If not, then an error message will display and redirect the user to the dreams page.
- [x] Include user input validations:   Validation presence is set to true in the User class model.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code:   Created the README file based off of a generic template, customizing it to correlate with my project.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message