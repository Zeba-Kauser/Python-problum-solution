--create the table
create table namaste_python (
file_name varchar(25),
content varchar(200)
);

--insert data into the table
insert into namaste_python values ('python bootcamp1.txt','python for data analytics 0 to hero bootcamp starting on Jan 6th')
,('python bootcamp2.txt','classes will be held on weekends from 11am to 1 pm for 5-6 weeks')
,('python bootcamp3.txt','use code NY2024 to get 33 percent off. You can register from namaste sql website. Link in pinned comment');

select * from namaste_python;

--Solution:
With Iteams as 
(select * 
from namaste_python
cross apply string_split(content,' '))
select value as words, COUNT(value) as repeat_count
from Iteams 
group by value 
having COUNT(value) >1 ;
--Explanation:

--This query first splits the content column into individual words using STRING_SPLIT 
--then it counts the occurrences of each word and filters out the words that are repeated more than once using the HAVING clause.
