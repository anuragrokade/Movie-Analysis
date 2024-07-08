use movies;

/*Q1) Write a SQL query to find the name and year of the movies. Return movie title, movie release year.*/
select mov_title,mov_year 
from movies;

/*Q2) Write a SQL query to find when the movie 'American Beauty' released. Return movie release year.*/
select mov_year
from movies
where mov_title="American Beauty";

/*Q3) Write a SQL query to find the movie that was released in 1999. Return movie title.*/
select mov_title 
from movies
where mov_year=1999;

/*Q4) Write a SQL query to find those movies, which were released before 1998. Return movie title.*/
select mov_title 
from movies
where mov_year<1998;

/*Q5) Write a SQL query to find the name of all reviewers and movies together in a single list.*/
select rev_name
from reviewer
UNION 
select mov_title
from movies;

/*Q6) Write a SQL query to find all reviewers who have rated seven or more stars to their rating.
Return reviewer name. */
select reviewer.rev_name, rating.rev_stars
from reviewer
join rating
where reviewer.rev_id=rating.rev_id
and rating.rev_stars>=7
and reviewer.rev_name IS NOT NULL;

/*Q7) Write a SQL query to find the movies without any rating. Return movie title.*/
select mov_title
from movies 
where mov_id NOT IN(
select mov_id
from rating
);

/*Q8) Write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.*/
select mov_title
from movies
where mov_id IN(905,907,917);

/*Q9) Write a SQL query to find the movie titles that contain the word 'Boogie Nights'.Sort the result-set in
ascending order by movie year return movie ID, movie title and movie release year.*/
select mov_id,mov_title,mov_year
from movies 
where mov_title like '%Boogie%Nights%'
order by mov_year asc;

/*Q10) Write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. Return
actor ID.*/
select act_id
from actors
where act_fname="Woody" and act_lname="Allen";