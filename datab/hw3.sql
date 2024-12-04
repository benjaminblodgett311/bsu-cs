create database if not exists hw3;
use hw3;

drop table if exists site_cache;
drop table if exists tag;
drop table if exists bookmark;
drop table if exists subscription;
drop table if exists userperson;

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

alter table userperson auto_increment = 1;
alter table bookmark auto_increment = 1;

insert into userperson (create_date, username, password_hash, email) values
(now(), 'obamaismydad5', '314fe973c673ea...', 'obama@gmail.com'),
(now(), 'epicgamer79', '7c25875442b7...', 'gaming@gmail.com'),
(now(), 'poopeater375', '032ee6373db3...', 'poop@gmail.com'),
(now(), 'x_ragingwhale_x', 'e940a3d4f762...', 'whale@gmail.com'),
(now(), 'oldmeme', '79c270cb3225...', 'oldmeme@gmail.com'),
(now(), 'burritocaties', 'b67608054a8e...', 'burritocaties@gmail.com');

insert into bookmark (url, is_private, create_date, update_date, description, title, user_id) values
('https://www.youtube.com/watch?v=6w3ebmed9uy', true, now(), null, 'give it a listen', 'epic song', 2),
('https://docs.openiam.com/docs-4.2.1.3/appendix/2-openssl', false, now(), null, 'how to install openssl', 'install openssl', 2),
('https://tmuxcheatsheet.com/', true, now(), null, 'this is cool stuff in tmux', 'tmux cheatsheet', 4),
('https://medium.com/@wujido20/handling-flags-in-bash-scripts-4b06b4d0ed04', true, now(), null, 'a comprehensive guide', 'bash flag handling', 4),
('https://www.ionos.com/digitalguide/server/configuration/linux-alias-command/', true, now(), null, 'creating command shortcuts on linux', 'the alias command', 4);

insert into tag (tagname, bookmark_id) values
('funny', 1),
('openssl', 2),
('tmux', 3),
('bash', 4),
('linux', 5),
('informative', 2),
('informative', 3),
('informative', 4),
('informative', 5);

insert into site_cache (url, cache_date, success, html) values
('https://tmuxcheatsheet.com/', now(), false, null);

insert into subscription (user_id) values
(1),
(2),
(3);
