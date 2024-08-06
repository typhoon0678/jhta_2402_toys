select * from COMPANY;

select * from CAR;

select * from CAR_OPTION;


-- 키값으로만 UPDATE, DELETE를 하는 default 옵션을 일시적으로 해제
set sql_safe_updates = 0;


-- CAR 테이블의 "E클래스" DELETE
delete from CAR_OPTION 
	where CAR_FK = (select CAR_PK from CAR where CAR_NAME = "E클래스");

delete from CAR
	where CAR_NAME = "E클래스";

    
-- COMPANY 테이블의 "벤츠" DELETE
delete from CAR_OPTION 
	where COMPANY_FK = (select COMPANY_PK from COMPANY where COMPANY_NAME = "벤츠");

delete from CAR
	where COMPANY_FK = (select COMPANY_PK from COMPANY where COMPANY_NAME = "벤츠");
    
delete from COMPANY
	where COMPANY_NAME = "벤츠";