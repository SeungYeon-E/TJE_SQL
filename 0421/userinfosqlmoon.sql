use useraddress;
SELECT seqno, name, telno, relation from userinfo where name like '%R%';
select seqno, name, telno, relation from userinfo where address like '%se%';
select seqno, name, telno, relation from userinfo where relation like 'f%';

delete from userinfo where seqno = 7;
UPDATE userinfo SET telno = 444, address = 555 WHERE seqno = 10;