
-- SID Ȯ�� ��ɾ� : 
select instance from v$thread;
 
-- http ��Ʈ Ȯ�� ��ɾ� : 
select dbms_xdb.gethttpport() from dual;

-- ��Ʈ ���� ��ɾ� : 
-- exec dbms_xdb.sethttpport(��������Ʈ��ȣ);

-- ������ ��Ʈ ��ȣ Ȯ�� : listener.ora ����
