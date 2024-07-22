-- Viewing all the data from the tables
select *
from appearances a;

select *
from club_games cg;

select *
from clubs c;

select *
from competitions c;

select *
from game_events ge;

select *
from game_lineups gl;

select *
from games g;

select *
from player_valuations pv;

select *
from players p;

-- Q1) How many players are there in total?
select count(*)
from players p;

-- Q2) How many player names start with the letter 'm'
select first_name
from players p 
where first_name like 'm%';

select count(*)
from players p 
where first_name like 'm%';

-- Q3) Give me a list of the top 10 highest market value for players living in Europe?
select distinct(highest_market_value_in_eur)
from players p
order by highest_market_value_in_eur desc
limit 10;

-- Q4) How many different clubs are there
select distinct(count(*))
from clubs c;

-- Q5) Give me a club name with the most number of foreigners top 10
select name, max(foreigners_number)
from clubs c 
group by name 
order by foreigners_number desc
limit 10;

-- Q6) Give me a count of the different rounds-types there are?
select substr(round, instr(round, '. ') + 1) as no_numbers, count(*)
from games
group by no_numbers
order by count(*) desc;

-- Q7) How many players appeared in the semifinals?
select distinct(p.name), g.round
from players p 
join game_events ge on p.player_id = ge.player_id 
join games g on ge.game_id = g.game_id
where substr(g.round, instr(round, '. ') + 1) like "Semi%"
order by g.round;

select c.name, SUM(a.goals) as total_goals
from clubs c
join club_games cg on c.club_id = cg.club_id
join game_events ge on cg.game_id = ge.game_id
join appearances a on a.game_id = cg.game_id 
group by c.name
order by total_goals desc;

-- Q8) Find the top 10 players most valuable players based on Country Name
select p.name, c.country_name
from players p 
join appearances a on p.player_id = a.player_id 
join competitions c on a.competition_id = c.competition_id 
where c.country_name is not null
group by c.country_name 
order by p.name
limit 10;