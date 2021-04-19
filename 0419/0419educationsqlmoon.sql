use education;

select * from student;

select sname, sdept from student where sdept = '컴퓨터공학과';
select count(*) from student where sdept = '컴퓨터 공학과';
select * from student where sname like '%진%';

select * from student order by sname;

#mysql 과목을 강의하는 교수님의 이름, 전화번호, 강의실을 검색
select p.pname, p.pphone, c.croom
from professor as p, course as c, lecture as l
where c.cname = 'MYSQL' and 
c.ccode = l.lccode and l.lpcode = p.pcode;

#김구 교수님이 강의하는 과목명, 강의시간과 강의실을 검색
select c.cname, c.ctime, c.croom
from professor as p, course as c, lecture as l
where p.pname = '김구' and
p.pcode = l.lpcode and c.ccode = l.lccode;

#각 학생이 수강 신청한 과목에 대해서 학생이름, 과목명, 강의실, 강의시간을 검색
select s.sname, c.cname, c.croom, c.ctime
from student as s, course as c, register as r
where s.scode = r.rscode and c.ccode = r.rccode;

select * from score;
desc score;
select sum(v2) from score;
select count(v2) from score;
select avg(v2) as 평균 from score;
select max(v2) from score;
select min(v2) from score;
select max(v2) - min(v2) as 빼기 from score;

#각 학과별 교수님은 몇분인지 구하는 검색
select pdept, count(*) as 수 from professor group by pdept;


#각 학생이 신청한 총 학점을 구하는 검색
select s.sname, sum(c.ctime) as 학점
from student as s, course as c, register as r
where s.scode = r.rscode and c.ccode = r.rccode group by s.sname;

#각 학생이 신청한 총 학점을 구하는 검색(강사님)
select s.sname, s.sdept, sum(c.ctime) as 학점
from student s, course c, register r
where s.scode = r.rscode and c.ccode = r.rccode
group by s.sname;




