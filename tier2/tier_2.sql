select * from user_role;
select * from app_user;

-- Problem 1
select * from app_user where role_id = 3;

-- Problem 2
insert into app_user (username, password, first_name, last_name, role_id)
values('user11', 'revature', 'Hugh', 'Smith', 4);

-- Problem 3
select * from app_user
left join study_set ON app_user.user_id = owner_id
where user_id = 4;

-- Problem 4 - will return to this problem if there is time
--select study_set, role_id from app_user
--left join 
--where 