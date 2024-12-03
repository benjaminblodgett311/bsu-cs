create database if not exists hw3;

use hw3;

drop table site_cache;
drop table tag;
drop table bookmark;
drop table subscription;
drop table userperson;

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

create table if not exists bookmark (
	url varchar(1024) not null,
	is_private boolean not null,
	create_date timestamp not null,
	update_date timestamp,
	description text not null,
	title varchar(64) not null,
	bookmark_id int auto_increment primary key,
   user_id int,
   foreign key (user_id) references userperson(user_id)
);

create table if not exists tag (
   tagname varchar(64) not null,
   bookmark_id int not null,
   primary key (tagname, bookmark_id),
   foreign key (bookmark_id) references bookmark(bookmark_id)
);

create table if not exists site_cache (
   cache_id int not null auto_increment,
   url varchar(2048),
   cache_date timestamp not null,
   success boolean not null,
   html text,
   primary key (cache_id, cache_date)
);

insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values ('https://www.youtube.com/watch?v=6w3EbmeD9UY', true, now(), null, 'Give it a listen', 'Epic Song', 2);
insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values ('https://docs.openiam.com/docs-4.2.1.3/appendix/2-openssl', false, now(), null, 'How to install OpenSSL', 'Install OpenSSL', 2);
insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values ('https://tmuxcheatsheet.com/', true, now(), null, 'This is cool stuff in tmux', 'Tmux Cheatsheet', 4);
insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values ('https://medium.com/@wujido20/handling-flags-in-bash-scripts-4b06b4d0ed04', true, now(), null, 'A compehensive guide', 'Bash flag handling', 4);
insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values ('https://www.ionos.com/digitalguide/server/configuration/linux-alias-command/', true, now(), null, 'Creating command shorcuts on Linux', 'The alias command', 4);

insert into tag (tagname, bookmark_id) values ('funny', 1);
insert into tag (tagname, bookmark_id) values ('openssl', 2);
insert into tag (tagname, bookmark_id) values ('tmux', 3);
insert into tag (tagname, bookmark_id) values ('bash', 4);
insert into tag (tagname, bookmark_id) values ('linux', 5);
insert into tag (tagname, bookmark_id) values ('informative', 2);
insert into tag (tagname, bookmark_id) values ('informative', 3);
insert into tag (tagname, bookmark_id) values ('informative', 4);
insert into tag (tagname, bookmark_id) values ('informative', 5);

insert into site_cache (url, cache_date, success, html) values ('https://tmuxcheatsheet.com/', now(), false, NULL);

insert into userperson (create_date, username, password_hash, email) values (now(), 'obamaismydad5', '314fe973c673ea83730cb82e03be63b1faa4dab197ba97f650d14f71457c4de5', 'obama@gmail.com');
insert into userperson (create_date, username, password_hash, email) values (now(), 'epicgamer79', '7c25875442b7173be0748f22bccf2968a0dd1a60207b71df11674402c854b517', 'gaming@gmail.com');
insert into userperson (create_date, username, password_hash, email) values (now(), 'poopeater375', '032ee6373db32ab77f71eabac765ca7f2d1b7fb442c884daf325d569499f8ef3', 'poop@gmail.com');
insert into userperson (create_date, username, password_hash, email) values (now(), 'x_ragingwhale_x', 'e940a3d4f76257cbf61fceb84d33f12743c7bc36d212f412d86bd591a819bbbf', 'whale@gmail.com');
insert into userperson (create_date, username, password_hash, email) values (now(), 'oldmeme', '79c270cb3225e8264697144f3cf7675df8e314d40bc42922f9d7feeb5e31f6be', 'oldmeme@gmail.com');
insert into userperson (create_date, username, password_hash, email) values (now(), 'burritocaties', 'b67608054a8e173aa239b61a240d5e92211268da38944964c1d859f7bc41a739', 'burritocaties@gmail.com');

insert into subscription (user_id) values (1);
insert into subscription (user_id) values (2);
insert into subscription (user_id) values (3);
