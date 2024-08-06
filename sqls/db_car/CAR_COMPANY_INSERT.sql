INSERT INTO `COMPANY` (COMPANY_PK, COMPANY_NAME) VALUES
('C001', '현대'),
('C002', '기아'),
('C003', '쉐보레'),
('C004', 'BMW'),
('C005', '벤츠');

INSERT INTO `CAR` (CAR_PK, COMPANY_FK, CAR_NAME, CAR_YEAR) VALUES
('CAR001', 'C001', '소나타', 2020),
('CAR002', 'C002', '쏘렌토', 2018),
('CAR003', 'C003', '카마로', 2019),
('CAR004', 'C004', '3시리즈', 2017),
('CAR005', 'C005', 'E클래스', 2021);

INSERT INTO `CAR_OPTION` (OPTION_PK, CAR_FK, COMPANY_FK, OPTION_NAME) VALUES
('OPT001', 'CAR001', 'C001', '네비게이션'),
('OPT002', 'CAR001', 'C001', '후방카메라'),
('OPT003', 'CAR002', 'C002', '가족시트'),
('OPT004', 'CAR002', 'C002', '스마트키'),
('OPT005', 'CAR003', 'C003', '크루즈컨트롤'),
('OPT006', 'CAR003', 'C003', '블루투스'),
('OPT007', 'CAR004', 'C004', '후방감지센서'),
('OPT008', 'CAR004', 'C004', '헤드업디스플레이'),
('OPT009', 'CAR005', 'C005', '전자식 메모리 시트'),
('OPT010', 'CAR005', 'C005', '어댑티브');
('OPT011', 'CAR005', 'C005', '크루즈컨트롤');
