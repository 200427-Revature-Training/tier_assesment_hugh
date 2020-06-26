
-- a.
-- Created postgres database on my original AWS instance

-- b.
-- Created a connection to postgres database on DBeaver

-- c.
create table user_role (
	role_id INTEGER generated always as identity primary key,
	name VARCHAR(50) not NULL
);

create table category (
	category_id INTEGER generated always as identity primary key,
	name VARCHAR(40) not NULL
)

create table flashcard (
	flashcard_id INTEGER generated always as identity primary key,
	question VARCHAR(100) not NULL,
	answer VARCHAR(100) not null,
	category_id INTEGER references category(category_id)
)

create table study_set_card (
	study_set_id INTEGER generated always as identity primary key
	references study_set(study_set_id),
	flashcard_id INTEGER references flashcard(flashcard_id)
	
)

create table study_set (
	study_set_id INTEGER generated always as identity primary key,
	name VARCHAR(20) not null,
	owner_id INTEGER references app_user(user_id)
);

create table app_user (
	user_id INTEGER generated always as identity primary key,
	username VARCHAR(20) not null,
	password VARCHAR(20) not null,
	first_name VARCHAR(40) not null,
	last_name VARCHAR(40) not null,
	role_id INTEGER references user_role(role_id)
);

-- d Will return to if I have time