use education;
select * from student;
update student set scode = 'S100' where sname = '박소명';

select * from student where sdept = '컴퓨터공학과';

select * from professor; #comment
select pname from professor where pdept = '컴퓨터공학과';

#professor에서 주소가 서울인 교수님의 이름과 전공을 출력하기
select pname, pdept from professor where professor = '서울';

#professor에서 전공이 국문학과 주소가 강원도인 교수님 출력하기
select * from professor where pdept = '국문학과' or paddress = '강원도';

#professor table을 이름 오름차순으로 정렬하기
select * from professor order by pname;

#professor table 을 이름 기준으로 내림차순 정렬하기, asc는 오름차순
select * from professor order by pname desc;

#professor에서 전공기준으로 오름차순 정렬하기
select  * from professor order by pdept, pname;

#국문학과 교수 리스트를 이름 순서로 출력
select * from professor where pdept = '국문학과' order by pname;

#교수 테이블에서 김구 선생님의 이름을 하은용 교수님을 변경하시오
update professor set pname = '하은용' where pname = '김구';

#지도 테이블에서 교수코드가 p007인 레코드들을 모두 p005로 변경하기.
update advise set apcode = 'P005' where apcode = 'p007';

#강의 시간이 2인 과목들의 강의시간을 1 증가 시키고, 강의실 lab1으로 변경하기
update course set ctime = '3', croom = 'Lab1' where ctime = '2';

#삭제
select * from student;
delete from student where sdept = '국문학과';

#새 테이블 생성 후 table 복사하기
create table student1 select * from student;

#table 복사하기
insert into student select * from student;#불가 pk때문에..













