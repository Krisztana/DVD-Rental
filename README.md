

It is a personal project where I used the PostgreSQL DVD Rental sample database 

## Dataset

It is a sample database with 15 tables.
The list of the tables with a short description:

* actor – stores actors data including first name and last name.
* film – stores film data such as title, release year, length, rating, etc.
* film_actor – stores the relationships between films and actors.
* category – stores film’s categories data.
* film_category- stores the relationships between films and categories.
* store – contains the store data including manager staff and address.
* inventory – stores inventory data.
* rental – stores rental data.
* payment – stores customer’s payments.
* staff – stores staff data.
* customer – stores customer data.
* address – stores address data for staff and customers
* city – stores city names.
* country – stores country names


[Can download the DVD-Rental database here](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).

[Can see the DVD Rental ER diagram here](https://github.com/Krisztana/DVD-Rental/blob/main/DVDrental_database_ER_model.jpg).


### Challenge description

In the [analyze_DVD_rental.sql](https://github.com/Krisztana/DVD-Rental/blob/main/analyze_DVD_rental.sql) can find the codes for the following questions:

* Identify the top 10 customers and their email so we can reward them
* Identify the bottom 10 customers and their emails 
* What are the most profitable movie genres?
* What is the customer base in the countries where we have a presence?
* Which country is the most profitable for the business?
* What is the average rental rate per movie genre?
* How many rented films were returned late, early and on time?
