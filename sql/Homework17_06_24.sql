-- 1 уровень сложности: В рамках БД audiohosting:
--
--1)Создать таблицу комментариев (comments) с использованием механизма валидации данных в SQL
--2)Добавить в таблицу комментариев несколько записей
--3)Вывести ко-во комментариев на каждый трек (в упорядоченном виде)

--1)
create table comments (
	id int primary key auto_increment,
    created_at timestamp default current_timestamp,

	author_id int not null,
    description varchar(128) not null,
    track_id int not null,

    foreign key (author_id) references users (id),
    foreign key (track_id) references tracks (id)
);
--2)Добавить в таблицу комментариев несколько записей
insert into comments (description, author_id, track_id)
values
('Cool track',1,1),
('Cool!',2,2),
('Great',3,3),
('very good',4,4)
--3)Вывести ко-во комментариев на каждый трек (в упорядоченном виде)
--(Добавил ешё несколько записей чтоб было понятнее как работает сортировка)
select track_id,
tracks.title,
count(*) As total_comments
from comments
JOIN tracks ON tracks.id = comments.track_id
group by track_id
ORDER BY total_comments DESC