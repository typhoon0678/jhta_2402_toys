INSERT INTO MEMBER_INFO (MI_PK, NAME, AGE, GENDER, PHONE, EMAIL) VALUES
('MI_001', '홍길동', 30, '남', '010-1234-5678', 'hong@example.com'),
('MI_002', '김영희', 25, '여', '010-9876-5432', 'kim@example.com'),
('MI_003', '이철수', 35, '남', '010-2468-1357', 'lee@example.com'),
('MI_004', '박민준', 28, '남', '010-8642-9137', 'park@example.com'),
('MI_005', '임지영', 32, '여', '010-5793-6241', 'lim@example.com');


INSERT INTO MEMBER_HOBBY (MH_PK, HOBBY) VALUES
('MH_001', '등산'),
('MH_002', '요리'),
('MH_003', '음악감상'),
('MH_004', '수영'),
('MH_005', '영화감상'),
('MH_006', '자전거'),
('MH_007', '요가'),
('MH_008', '그림 그리기'),
('MH_009', '독서'),
('MH_010', '공원 산책');


INSERT INTO MEMBER_ADDRESS (MA_PK, ADDRESS) VALUES
('MA_001', '서울특별시 강남구'),
('MA_002', '경기도 수원시'),
('MA_003', '인천광역시 부평구'),
('MA_004', '대전광역시 서구'),
('MA_005', '경상북도 포항시 북구');


INSERT INTO MEMBER_INFO_HOBBY (MIH_PK, MI_FK, MH_FK) VALUES
('MIH_001', 'MI_001', 'MH_001'),
('MIH_002', 'MI_001', 'MH_002'),
('MIH_003', 'MI_002', 'MH_003'),
('MIH_004', 'MI_002', 'MH_004'),
('MIH_005', 'MI_003', 'MH_005'),
('MIH_006', 'MI_003', 'MH_006'),
('MIH_007', 'MI_004', 'MH_007'),
('MIH_008', 'MI_004', 'MH_008'),
('MIH_009', 'MI_005', 'MH_009'),
('MIH_010', 'MI_005', 'MH_010');


INSERT INTO MEMBER_INFO_ADDRESS (MIA_PK, MI_FK, MA_FK) VALUES
('MIA_001', 'MI_001', 'MA_001'),
('MIA_002', 'MI_001', 'MA_002'),
('MIA_003', 'MI_002', 'MA_002'),
('MIA_004', 'MI_003', 'MA_003'),
('MIA_005', 'MI_004', 'MA_004'),
('MIA_006', 'MI_005', 'MA_004'),
('MIA_007', 'MI_005', 'MA_005');