
-- 创建数据库

create database shunting;

use shunting;
-- 设置编码
set names utf8; 

-- 创建数据表
create table s_article (
	art_id mediumint(8) unsigned not null auto_increment,
	title varchar(40) not null default '',
	desctiption varchar(255) not null default '',
	content text not null default '',
	author varchar(20),
	addtime int,
	primary key(id)
) engine=myisam default charset=utf8;


-- 用户表
create table s_admin (
	user_id mediumint(6) unsigned not null primary key  auto_increment,
	username varchar(20) not null default ''  comment '用户名',
	password varchar(32) not null default '' comment '密码',
) engine=myisam default charset=utf8;


-- 测试数据
insert into s_admin values(null, 'admin', md5('admin'));

-- 新闻表
create table s_news(
	news_id mediumint(6) unsigned not null auto_increment primary key,
	title varchar(20) not null default '',
	url varchar(255)  not null default '',
	author varchar(20) not null default '',
	smallimg varchar(255) not null default '' comment '头像',
	desctiption varchar(255) not null default '',
	addtime int not null default 0
) engine=myisam default charset=utf8;


