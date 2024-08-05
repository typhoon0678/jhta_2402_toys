-- NOTICE 테이블에 데이터 삽입
INSERT INTO NOTICE (NOTICE_PK, CONTENT, WRITER) VALUES 
('NOTICE_01', '서비스 점검 안내', '관리자'),
('NOTICE_02', '이벤트 안내', '마케팅팀'),
('NOTICE_03', '새로운 기능 추가 안내', '관리자'),
('NOTICE_04', '결제 시스템 업그레이드 안내', '운영팀'),
('NOTICE_05', '서비스 이용약관 변경 안내', '운영팀');

-- VISITOR 테이블에 데이터 삽입
INSERT INTO VISITORS (VISITOR_PK, NOTICE_FK, VISITOR_NAME) VALUES 
('VISITE_01', 'NOTICE_01', '홍길동'),
('VISITE_02', 'NOTICE_01', '김영희'),
('VISITE_03', 'NOTICE_02', '백지영'),
('VISITE_04', 'NOTICE_02', '최민호'),
('VISITE_05', 'NOTICE_02', '송지현'),
('VISITE_06', 'NOTICE_03', '장성우'),
('VISITE_07', 'NOTICE_04', '백지영'),
('VISITE_08', 'NOTICE_04', '최민호'),
('VISITE_09', 'NOTICE_04', '임현서'),
('VISITE_10', 'NOTICE_05', '강수민'),
('VISITE_11', 'NOTICE_05', '백정희');

select * from NOTICE;
select * from VISITOR;