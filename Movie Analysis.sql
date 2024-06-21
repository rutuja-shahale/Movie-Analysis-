-- 1. Query to find the name and year of the movies.
select mov_title, mov_year from movie;

-- 2. Query to find the release year of the movie 'Titanic'.
select mov_year from movie where mov_title = 'Titanic';

-- 3. Query to find the movie that was released in 1997.
select mov_title from movie where mov_year = '1997';

-- 4. Query to find movies released between 1990 and 2000.
select mov_title, mov_year from movie where mov_year between 1990 and 2000;

-- 5. Query to find the name of all reviewers and movies together in a single list.
select rev_name from reviewer union select mov_title from movie;

-- 6. Query to find the movies with ID 920, 911 and 907.
select mov_title, mov_id from movie where mov_id in (920, 911, 907);

-- 7. Query to find the movie titles that contain the words 'Boogie Nights' and sort the result-set in ascending order by movie year.
select mov_id, mov_title, mov_year from movie where mov_title = 'Boogie Nights' order by mov_year asc;

-- 8. Query to find those actors with the first name 'Robin' and the last name 'Williams'.
select act_id from actor where act_fname = 'Robin' and act_lname = 'Williams';

-- 9.Query to find the first name, last name, and role of each actor by joining the actor and the movie_cast table on the act_id.
select a.act_fname, a.act_lname, m.role from actor a
join movie_cast m 
on a.act_id = m.act_id;

-- 10. Query to find the release date of movies where movie ID is greater than 920.
select mov_dt_rel, mov_id from movie where mov_id > 920;


