
-- SID 확인 명령어 : 
select instance from v$thread;
 
-- http 포트 확인 명령어 : 
select dbms_xdb.gethttpport() from dual;

-- 포트 변경 명령어 : 
-- exec dbms_xdb.sethttpport(변경할포트번호);

-- 리스너 포트 번호 확인 : listener.ora 파일
