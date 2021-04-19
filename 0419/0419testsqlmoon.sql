use test;

select * from employee_tbl;
select count(*) from employee_tbl;
select name, count(*) from employee_tbl group by name; # 이름 수 카운트하기
select * from employee_tbl where daily_typing_pages = 250 or daily_typing_pages = 220 or daily_typing_pages = 170;
select * from employee_tbl where daily_typing_pages in (250, 220, 170);

select * from employee_tbl where daily_typing_pages >= 170 and daily_typing_pages <= 300;
select * from employee_tbl where daily_typing_pages between 170 and 300;

select * from prospect;
select * from customer;
select * from vendor;

# 합집합
select fname, lname, addr from prospect
union
select first_name, last_name, address from customer
union
select company, ' ', street from vendor;

# prospect와 customer테이블에 있는 같은 이름 출력하기
select a.first_name, a.last_name from customer a, prospect b where a.first_name = b.fname;

#employee_tbl 에서 이름이 zara는 몇명인가?
select count(*) from employee_tbl where name = 'zara';

#employee_tbl에서 최대 타이핑 페이지 수는?
select max(daily_typing_pages) from employee_tbl;

#employee_tbl에서 이름별 id, name, 최대 타이핑 수 출력하기
select id, name, max(daily_typing_pages) from employee_tbl group by name;

#employee_tbl에서 이름별 id, name, 최소 타이핑 수 출력하기
select id, name, min(daily_typing_pages) from employee_tbl group by name;

#employee_tbl에서 이름별 id, name, 평균 타이핑 수 출력하기
select id, name, avg(daily_typing_pages) from employee_tbl group by name;

#employee_tbl에서 이름별 id, name, 합계 타이핑 수 출력하기
select id, name, sum(daily_typing_pages) from employee_tbl group by name;
select id, name, sum(daily_typing_pages) as 합계, sum(daily_typing_pages) * 500 as fee from employee_tbl group by name;

#etc
select 1 + 2;
select sqrt(16); #제곱근
select rand(); #값이 계속 변함
select * from employee_tbl order by rand();
select concat(id, name, workdate)  from employee_tbl; #하나로 합쳐서 출력
select now(); #현재 날짜 시간 출력
select adddate('2021-04-19', interval 20 day); #시간 추가
select adddate('2021-04-19', 20); #시간 추가
select curdate(); #현재 날짜 출력
select curdate() + 20;
select curtime(); #현재 시간 출력
select dayname('2021-04-19');
select dayname(now()); #현재 요일 출력
select timediff('2021-04-19', '2021-01-01');
select datediff('2021-01-01', now()); #디데이

select abs(-2); # 절대값
select ceil(7.63); # 무조건 올림
select floor(7.63); # 무조건 내림
select round(7.43); # 기본값, 반올림
select mod(29,3); # 나머지값
select power(2,3); # 제곱승
select truncate(7.536432, 2); # 소수점까지
select id, name, truncate(avg(daily_typing_pages), 2) from employee_tbl group by name;

select char_length('text'); # 글자값
select insert('abcdefg', 3, 4, '123'); # 글자추가
select trim('     123    '); #공백지우기
select replace('111.google.com', '1', 'w'); # 글 바꿔주기
select reverse('4321'); # 정렬
select strcmp('aaa', 'aab'); # 컴페어 글 차이
select substring('abcdefg', 5); # 어디부터 끝까지 출력
select substring('abcdefg', 1, 3); # 어디부터 어디까지 출력














