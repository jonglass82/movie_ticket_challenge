This application is an online ticketing application for Glassman Theaters. It provides software for Glassman Theaters to sell movie tickets online and effectively manage and automate their business. 

This application uses ruby version '2.6.3' and Rails version 5.2.3.

To get started using this application on your local machine: 


git clone

bundle install 

rails db:create

rails db:migrate

rails db:seed

Then start the server:

rails server


In this project there are 4 important objects: 

Auditorium which has the attributes of a space_name and a capacity for the maximum amount of seating available. 

Movie has a title, show_time, auditorium_id and an attribute for available_tickets which is dynamically created for the exact amount of the Auditorium capacity as long as an Auditorium is associated with the Movie. This allows the client to create a new Movie listing and not have to check what the capacity of its auditorium is. 

Purchase has a customer_name, customer_email, cc_number, and cc_exp expiration dates when it is first initialized. I built a custom validation to check if an expiration date entered is valid along with Regex validations for customer_email and cc_number. 

If a purchase is successfully created and it passes all validations, a Ticket is then created and a ticket_id is updated to the purchase. The attribute for the movie available_tickets is also decremented by 1 in the database. 

Once a purchase is complete there are a couple things that happen. Using ActiveMailer the customer is sent an email with their purchase confirmation to include the movie name, show_time and theater location. The purchase is also saved to the database and can be accessed in a report from the admin dashboard. 

The movie_listings index is then updated to show the remaining tickets for each movie listing. I set a condition on the home page so when the available_tickets == 0, the movie listing will render as 'sold out' and a customers will not be able to purchase any more tickets. 

I created CRUD routes for Auditorium and Movie objects which are accessible in the admin dashboard. I assigned Auditorium and Movie to their own controllers to handle the CRUD actions. 

In the admin dashboard, an admin user can edit an Auditorum and Movie listings. The admin dasboard also provides a list of ticket sales with a search bar to filter the ticket sales. The search bar functionality is implemented with jQuery to filter the results. 

When an admin user edits a Movie, I implemented a helpful feature to provide an option to remove or discontinue the sales of a selected movie. This is possible by adding and active attribute to Movie so if the admin user wants to remove the movie from their store, they can update the active attribute to 'false' and the movie will not show available for customers to purchase. The nice part of this feature is the admin user will still have access to the Ticket sales even though the movie has been removed. We can always put the movie back by setting active to 'true' again. 

A feature that I would like to add to this application is a Cron job to automatically update all available_tickets for Movie to the auditroium capacity. This would be done at 12:00 am daily. This way the client will not have to manually restock tickets for the next day.  
