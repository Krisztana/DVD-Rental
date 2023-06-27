## DVD Rental Analysis

This repository presents a personal project where the PostgreSQL DVD Rental sample database was utilized for analysis.

**Dataset**

The dataset used in this project is the PostgreSQL DVD Rental sample database. It consists of 15 tables, each with its specific purpose. Here is a brief description of the tables:

* actor: Stores actor data, including first name and last name
* film: Contains film data such as title, release year, length, rating, etc
* film_actor: Stores the relationships between films and actors
* category: Holds film category data
* film_category: Establishes the relationships between films and categories
* store: Contains store-related data, including manager staff and address
* inventory: Stores inventory data
* rental: Contains rental transaction data
* payment: Stores customer payment data
* staff: Holds staff-related data
* customer: Contains customer data
* address: Stores address data for staff and customers
* city: Stores city names
* country: Stores country names

  
The DVD-Rental database can be downloaded [here](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).
 You can also refer to the DVD Rental ER diagram [here](https://github.com/Krisztana/DVD-Rental/blob/main/DVDrental_database_ER_model.jpg).


**Challenge Description**

The [analyze_DVD_rental.sql](https://github.com/Krisztana/DVD-Rental/blob/main/analyze_DVD_rental.sql) file contains SQL codes to address the following questions:

* Identify the top 10 customers and their email addresses for potential rewards.
* Identify the bottom 10 customers and their email addresses.
* Determine the most profitable movie genres.
* Analyze the customer base in countries where the business operates.
* Identify the most profitable country for the business.
* Calculate the average rental rate per movie genre.
* Determine the number of rented films that were returned late, early, and on time.

**Conclusion**

This personal project showcases an analysis of the PostgreSQL DVD Rental sample database. By utilizing SQL queries, we explored various aspects of the dataset, including customer rankings, movie genre profitability, customer base analysis, and rental return statistics. The project aims to gain insights and make data-driven decisions based on the provided dataset.

