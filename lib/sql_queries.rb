def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"select projects.title, sum(pledges.amount)
 from projects 
 join pledges on projects.id = pledges.project_id
 group by pledges.project_id
 order by projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"select users.name, users.age, sum(pledges.amount)
 from users 
 join pledges on users.id = pledges.user_id
 group by pledges.user_id
 order by users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "select projects.title, sum(pledges.amount) as col
   from projects 
   join pledges on projects.id = pledges.project_id
   having col <> 0
   group by pledges.project_id
   order by col"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"Write your SQL query Here"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"Write your SQL query Here"
end

# CREATE TABLE projects (
#   id INTEGER PRIMARY KEY, 
#   title text, 
#   category text, 
#   funding_goal real, 
#   start_date text, 
#   end_date text
# );

# CREATE TABLE users (
#   id INTEGER primary key, 
#   name text, 
#   age integer 
# );

# CREATE TABLE pledges (
#   id INTEGER primary key, 
#   amount real, 
#   user_id integer, 
#   project_id integer
# );
