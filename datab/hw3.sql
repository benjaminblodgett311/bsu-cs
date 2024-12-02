create database if not exists hw3;

use hw3;

create table bookmark (
	url varchar(1024) not null,
	is_private boolean not null,
	create_date timestamp not null,
	update_date timestamp,
	description text not null,
	title varchar(64) not null,
	bookmark_id int auto_increment primary key
);

create table tag (
   tagname varchar(64) not null,
   bookmark_id int not null,
   primary key (tagname, bookmark_id)
   foreign key (bookmark_id) references bookmark(bookmark_id)
);

create table site_cache (
   url varchar(1024) primary key,
   cache_date timestamp not null,
   success boolean not null,
   html text
);

create table userperson (
   create_date timestamp not null,
   username varchar(32) not null,
   password_hash char(64) not null,
   email varchar(64) not null,
   user_id int auto_increment primary key
);

create table subscription (
   other_user_id int auto_increment primary key,
   user_id int auto_increment,
   foreign key (user_id) references userperson(user_id)
);
