
-- 创建数据库

create database shunting;

use shunting;
-- 设置编码
set names utf8; 

-- 创建数据表
create table s_article (
	id mediumint(8) unsigned not null auto_increment,
	title varchar(40) not null default '',
	desctiption varchar(255) not null default '',
	content text not null default '',
	author varchar(20),
	addtime int,
	primary key(id)
)engine = myisam default charset utf8;

