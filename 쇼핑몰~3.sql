-- ������ ����
-- create user shopping identified by oracle account unlock ;

-- alter user shopping default tablespace users quota unlimited on users ;

-- grant connect, resource to shopping ;

-- ȸ�� ���̺� ����
create table members(
    id varchar2(30) primary key,
    name varchar2(50) not null,
    password varchar2(50),
	gender varchar2(10),
	hobby varchar2(255),
    hiredate date default sysdate,	
    mpoint number default 0,
    remark varchar2(255) default ' '  
);

insert into members values('admin', '������', 'abc1234', '����', null, sysdate, 0, null);

insert into members values('hong', 'ȫ�浿', '1234', '����', null, sysdate, 0, null);
insert into members values('park', '�ڿ���', '1234', '����', null, sysdate, 0, null);

commit ;
select * from members ; 


-- ������ �� �Խù� ���̺� ����
create sequence myboard start with 1 increment by 1 nocache;

create table boards(
    no number primary key,
    writer varchar2(50),
    subject varchar2(50) not null,    
    content varchar2(50),    
    regdate date default sysdate,
    readhit number default 0,
    remark varchar2(255),
    groupno number default 0,
    orderno number default 0,
    depth number default 0 
);

alter table boards
add constraint boards_writer_fk
foreign key(writer) references members(id)
on delete set null ;

select * from boards ;


-- ��ǰ ���� ������ �� ���̺� ����
-- ��ǰ ī�װ� ���̺�
-- engname) ���� �̸�, kornaame) �ѱ� �̸�
create table categories(
	engname varchar2(50) primary key,
	kornaame varchar2(50)
);

insert into categories values('child', '���ƿ�ǰ');
insert into categories values('man', '������ǰ');
insert into categories values('woman', '������ǰ');


create sequence myproduct start with 10 increment by 1 nocache;

-- ��ǥ �̹����� image01�� �ʼ� �Է� ����
create table products(
    num number primary key,
    name varchar2(50),
    company varchar2(50) not null,
    comments varchar2(50),    
    image01 varchar2(50) not null,
	image02 varchar2(50),
	image03 varchar2(50),
    stock number default 0,
    price number default 0,
    point number default 0,
    remark varchar2(255),
    category varchar2(255),        
    inputdate date default sysdate
);

-- �ڽ� ���̺��� �����͸� �����ϰ� ������ ���� �Ұ����ϰ� ����
alter table products add foreign key(category) references categories(engname) ;


-- ����¡ ��ũ��Ʈ ���� �ڵ�
delete from members ;
insert into members values('admin', '������', '1234', '����', null, sysdate, 0, null);
insert into members values('kim9', '�豸', '1234', '����', null, sysdate, 0, null);
insert into members values('yusin', '������', '1234', '����', null, sysdate, 0, null);
insert into members values('lee', '�̼���', '1234', '����', null, sysdate, 0, null);

drop sequence myboard ;
create sequence myboard start with 1 increment by 1 nocache;
delete from boards;
begin 
   for i in 1..11 loop
      insert into boards(no, writer, subject, content, regdate, readhit, remark, groupno, orderno, depth) 
      values(myboard.nextval, 'kim9', '�豸'||to_char(i), 'jsp ���־��', sysdate, 0, null, myboard.currval, 0, 0);
      
      insert into boards(no, writer, subject, content, regdate, readhit, remark, groupno, orderno, depth) 
      values(myboard.nextval, 'yusin', '������'||to_char(i), 'jsp ���־��', sysdate, 0, null, myboard.currval, 0, 0);      
      
      insert into boards(no, writer, subject, content, regdate, readhit, remark, groupno, orderno, depth) 
      values(myboard.nextval, 'lee', '�̼���'||to_char(i), 'jsp ���־��', sysdate, 0, null, myboard.currval, 0, 0);     
   end loop ;
end ;
/
commit ;


select ranking, no, subject, writer, content, readhit, regdate, groupno, orderno, depth, remark
from ( select no, subject, writer, content, readhit, regdate, groupno, orderno, depth, remark, rank() over(order by no desc) as ranking
       from boards )
where ranking between 1 and 10 ;

-- ��� ���� ��ũ��Ʈ
-- drop table comments ;
create table comments(
   cnum number primary key,
   no int,
   writer varchar2(255),
   content varchar2(255),   
   regdate date default sysdate 
);

alter table comments add constraint comments_no_fk foreign key(no) references boards(no) on delete cascade ;

-- drop sequence mycomment ;
create sequence mycomment start with 1 increment by 1 nocache ; 

alter table comments add constraint comments_writer_fk foreign key(writer) references members(id) on delete cascade ; 

insert into comments(cnum, no, writer, content, regdate)
values(mycomment.nextval, 1, 'yusin', 'jQuery�� Ajax�� �����ϸ� �ſ� �����ϴ�', sysdate );

insert into comments(cnum, no, writer, content, regdate)
values(mycomment.nextval, 1, 'lee', '�������� ��ũ�� ����', sysdate );

insert into comments(cnum, no, writer, content, regdate)
values(mycomment.nextval, 2, 'yusin', '�������� �����ΰ�?', sysdate );

insert into comments(cnum, no, writer, content, regdate) 
values(mycomment.nextval, 2, 'lee', 'ȫ�浿���� �����ΰ�?', sysdate );

insert into comments(cnum, no, writer, content, regdate) 
values(mycomment.nextval, 2, 'lee', '�̼����� �� ��ø', sysdate );

commit ;



-- drop sequence seqoid ;
-- drop table orders purge ;

create sequence seqoid start with 1 increment by 1 nocache ;
create table orders(
  oid number primary key,
  mid varchar2(10) references members(id) on delete set null,
  orderdate date default sysdate 
);

-- drop sequence seqodid ;
-- drop table orderdetails purge ;

create sequence seqodid start with 1 increment by 1 nocache ;

-- pnum : ��ǰ ��ȣ, qty : �ֹ� ����
create table orderdetails(
  odid number primary key,
  oid number references orders(oid) on delete cascade,
  pnum number references products(num) on delete set null,
  qty number
);


