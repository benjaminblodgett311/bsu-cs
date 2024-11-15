create table bookmark (
   varchar(1024) url;
   boolean is_private;
   timestamp create_date;
   timestamp update_date;
   text description;
   varchar(64) title;
   primary key (bookmark_id);
);
