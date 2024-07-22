# SQL-Football-Project

### Project Overview
This is a beginner SQL project which analyzes data using Football (Soccer) data. The analysis was done using over 1,000,000 rows of data on fields like players names, which competitions they have participated, which country does each player reside in, how many qualified for the semi-finals, and much more.

### Data Sources
Football Data: The dataset used for this analysis is called "Football Data from Transfermarkt", and was borrowed from Kaggle.com

### Tools
- SQLite - Data Analysis
- SQL Query Syntax
- DBeaver

### Data Analysis / Exploration
Some of the questions asked when working with this dataset:

- How many players have names that start with the letter 'M'?
- What is the top 10 market value list for players who reside in Europe?
- Give me a total count of the different types of rounds being held? (e.g. How many rounds were labeled as "Matchday" vs. "Semi-Finals?)
- Which club scored the most amount of goals?

### Functions used in this analysis

#### Wildcard Function:
- '%' sign: Used to filter through player names that start with the letter 'm'

#### Aggregate Functions:
- COUNT(): Used to count the number of total players in the datatset, the total number of players that start with the letter 'm', and a count of all the club names listed
- MAX(): Used to find the highest number of foreigners located by their corresponding club name

#### Join Functions:
- JOIN: Used the join function to link the primary key to the foreign key.
  - Ex: The 'player_id' is the primary key in the 'players' table which links to the foreign key in the 'appearences' table

### Findings and Results
- The total number of players that start with the letter 'M' are 3,209
- Of the total count of the different types of rounds held, Matchday followed by First Round, Second Round, and Third Round
