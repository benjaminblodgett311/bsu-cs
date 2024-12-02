create database if not exists hw3;

use hw3;

create table if not exists bookmark (
	url varchar(1024) not null,
	is_private boolean not null,
	create_date timestamp not null,
	update_date timestamp,
	description text not null,
	title varchar(64) not null,
	bookmark_id int auto_increment primary key
);

create table if not exists tag (
   tagname varchar(64) not null,
   bookmark_id int not null,
   primary key (tagname, bookmark_id),
   foreign key (bookmark_id) references bookmark(bookmark_id)
);

create table if not exists site_cache (
   cache_id int primary key,
   url varchar(2048),
   cache_date timestamp not null,
   success boolean not null,
   html text
);

create table if not exists userperson (
   create_date timestamp not null,
   username varchar(32) not null,
   password_hash char(64) not null,
   email varchar(64) not null,
   user_id int auto_increment primary key
);

create table if not exists subscription (
   subscriber_user_id int auto_increment primary key,
   user_id int,
   foreign key (user_id) references userperson(user_id)
);

insert into table bookmark (url, is_private, create_date, update_date, description, title, bookmark_id) values ("https://www.youtube.com/watch?v=6w3EbmeD9UY", TRUE, NOW(), NULL, 'Give it a listen', 'Epic Song');
