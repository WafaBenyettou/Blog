# Distributed systems Project - Blog for Cybersecurity news

This project is developed for the Distributed App class and aims to create a secure blog web application using JavaEE. The application allows users to register, login, perform CRUD operations on blogs, comment on blogs, like blogs, search blogs by category, edit their profile information, and stay updated with the latest cyber attacks using the ShodanxMapbox API integration. The project uses Tomcat 8 as the application server, PostgreSQL as the database, applies security measures against injection attacks, implements user input validations, incorporates a password hashing function for enhanced security, follows the MVC (Model-View-Controller) architecture, and uses the DAO (Data Access Object) pattern for data access.

## Features

The JavaEE blog web app project includes the following features:

1. User Registration: Users can create an account by providing their necessary information such as name, email, and password. Input validation is applied to ensure data integrity.
2. User Login: Registered users can log in using their email and password to access the application. Passwords are securely hashed and stored in the database.
3. Blog Creation: Logged-in users can create new blog posts by providing a title, content, and category for the blog. Input validation is performed to prevent injection attacks.
4. Blog Management: Users can view, update, and delete their own blog posts. Authorization checks are implemented to ensure users can only modify their own blogs.
5. Commenting: Users can comment on blog posts, providing their thoughts and opinions. Input validation is applied to prevent injection attacks.
6. Liking: Users can like blog posts to show their appreciation or agreement. Authorization checks are implemented to ensure users can only like each blog once.
7. Category Search: Users can search for blogs by category, helping them find specific topics of interest.
8. Profile Editing: Users can edit their profile information, such as name, email, and password. Input validation and password hashing are applied for security purposes.
9. ShodanxMapbox API Integration: Users can stay updated with the latest cyber attacks thanks to the ShodanxMapbox API integration.

## Technologies Used

The JavaEE blog web app project utilizes the following technologies:

1. JavaEE: The Java Enterprise Edition platform is used for developing the web application.
2. Java Servlets: Servlets are used to handle the server-side processing and request handling.
3. JSP (JavaServer Pages): JSP is used for creating dynamic web pages and generating the HTML content.
4. Java Persistence API (JPA): JPA is employed for database persistence and object-relational mapping (ORM).
5. Tomcat 8: Tomcat 8 is used as the application server to deploy and run the web application.
6. PostgreSQL: The PostgreSQL database is used for storing user information, blogs, comments, and likes.
7. HTML/CSS: HTML and CSS are used for designing and styling the web pages.
8. JavaScript: JavaScript is used for client-side interactivity and dynamic behavior.
9. Security Measures:
   - Input Validation: User inputs are validated to prevent injection attacks and ensure data integrity.
   - Password Hashing: User passwords are securely hashed and stored in the database to protect user accounts.
10. ShodanxMapbox API: The ShodanxMapbox API is integrated to provide the latest cyber attack information.
11. MVC Architecture: The project follows the Model-View-Controller architecture for separation of concerns and code organization.
12. DAO Pattern: The project uses the DAO (Data Access Object) pattern to separate data access logic from the rest of the application.

## Project Structure

The project is structured similarly to the previous example, with modifications to include the security measures, PostgreSQL database integration, ShodanxMapbox API integration, MVC architecture, and DAO pattern. Here is an overview of the project structure:

src

    main
        java
            com.blog.dao
                 <dao files>
            com.blog.entities
                 <entities files>
            com.blog.servlets
                 <servlets files>
            com.blog.helpers
                 <helpers files>

        resources
            META-INF
    
    webapp
        WEB-INF
           <.jsp files>
        css
           <.cdd files>
        js
           <.js files>
        img


The MVC architecture separates the application logic into distinct components: controllers handle user interactions, models represent data entities, services encapsulate business logic, and the persistence package contains the DAO classes responsible for data access and database operations.

## Conclusion

The JavaEE blog web app project provides a user-friendly and secure platform for users to register, login, create and manage blogs, comment on blogs, like blogs, search blogs by category, edit their profile information, and stay updated with the latest cyber attacks using the ShodanxMapbox API integration. By implementing the mentioned technologies, security measures, adhering to the MVC architecture, utilizing the DAO pattern, and deploying the application on Tomcat 8, a scalable and robust blog web application can be developed for the Distributed App class.
