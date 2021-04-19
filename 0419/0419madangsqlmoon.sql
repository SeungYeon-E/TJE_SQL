use madang;

# 도서번호가 1인 도서의 이름
select * from book where bookid = 1;
select * from book where bookid = '1';

# 가격이 20,000원 이상인 도서의 이름
select bookname from book where price >= 20000;
select bookname from book where price >= '20000';

# 박지성의 총 구매액?
select c.name , sum(o.saleprice) as 구매액
from customer c, orders o
where c.name = '박지성' and c.custid = o.custid
group by c.name;

select  sum(saleprice)
from  orders
where custid = '1'
group by custid;

# 박지성이 구매한 도서의 수?
select c.name , count(o.saleprice) as 구매수
from customer c, orders o
where c.name = '박지성' and c.custid = o.custid;

# 박지성이 구매한 도서의 출판사 수?
select c.name, count(distinct(b.publisher))
from customer c, orders o, book b
where c.name = '박지성' and c.custid = o.custid and o.bookid = b.bookid;

select c.name, count(distinct(o.bookid))
from customer c, orders o
where c.name = '박지성' and c.custid = o.custid;

# 박지성이 구매한 도서의 출판사 이름은?
select c.name, b.bookname
from customer c, orders o, book b
where c.name = '박지성' and c.custid = o.custid and o.bookid = b.bookid;

# 마당서적 도서의 총 개수?
select  count(distinct(publisher))
from book;

# 모든 고객의 이름, 주소 출력
select name, address
from customer;

# 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이를 출력
select b.bookname as 책이름, o.saleprice as 판매가, b.price - o.saleprice as 할인된가격
from book b, orders o, customer c
where c.name = '박지성' and c.custid = o.custid and b.bookid = o.bookid;

# 2014년 7월 4일부터 7월7일 사이에 주문받은 도서의 주문번호 출력
select *
from orders
where orderdate between '20140704' and '2014-07-07';

# 2014년 7월 4일부터 7월7일 사이에 주문받은 도서를 제외한 도서의 주문정보 출력
select *
from orders
where not orderdate between '20140704' and '2014-07-07';

select *
from orders
where orderdate not between '20140704' and '2014-07-07';

# 성이 김씨인 고객의 이름과 주소 출력
select name, address
from customer
where name like '김%';

# 성이 김씨이고 이름이 아로 끝나는 고객의 이름과 주소 출력
select name, address
from customer
where name like "김%아";

# 고객의 이름과 고객이름별 구매액을 출력
select c.name as 고객이름, sum(o.saleprice) as 총구매액
from customer c, orders o
where c.custid = o.custid
group by c.name;

# 주문하지 않은 고객의 이름
select name
from customer
where custid not in (select o.custid from orders o, customer c where c.custid = o.custid);

select name
from customer
where custid not in (select o.custid from orders o, customer c where c.custid = o.custid);





