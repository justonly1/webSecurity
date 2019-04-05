drop table if exists user;

drop table if exists news;

/*table:user*/
create table user
(user_id int(5) NOT NULL auto_increment,
username varchar(20) NOT NULL,
password varchar(20) NOT NULL,
PRIMARY KEY (`user_id`));


insert into user(username,password)
values
('admin','123456'),
('root','123456'),
('test','test');

/*table:news*/
create table news
(news_id int(5) NOT NULL auto_increment,
content varchar(50) NOT NULL,
PRIMARY KEY (`news_id`));


insert into news(content)
values
('This is 1!'),
('This is 2!'),
('This is 3!'),
('This is 4!'),
('This is 5!'),
('This is 6!'),
('This is 7!'),
('This is 8!'),
('This is 9!'),
('This is 10!');