# slyce-qa

## Setting Up the Environment

1. After cloning the repo from Github, type "bundle install" in your terminal to install the necessary gems. 

## Setting Up the Database

1. Create the database first. Run "rake db:create" in the terminal
2. Migrate the database. Run "rake db:migrate" in the terminal 


## Running the Server

1. To start the server, run "rails s -p 8080". This will set localhost to 8080. 
2. Type http://localhost:8080/ in your browser

 

## Accessing the database

1. In the terminal, run "rails c" to open up the Rails console
2. You can access the tables here and migrations by running ActiveRecord commands. 
3. For example, to find a specific record associated with an id in the Qa table, type "Qa.find_by(id: 2)" to access that record or any attribute like name. 
