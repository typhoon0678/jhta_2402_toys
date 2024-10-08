-- CAR_COMPANY 데이터 삽입
INSERT INTO `CAR_COMPANY` (CC_PK, CC_NAME) VALUES
('CC_001', '현대'),
('CC_002', '기아'),
('CC_003', '쉐보레'),
('CC_004', 'BMW'),
('CC_005', '벤츠');

-- CAR_YEAR 데이터 삽입
INSERT INTO `CAR_YEAR` (CY_PK, CY_YEAR) VALUES
('CY_001', 2020),
('CY_002', 2018),
('CY_003', 2019),
('CY_004', 2017),
('CY_005', 2021);

-- CAR_NAME 데이터 삽입
INSERT INTO `CAR_NAME` (CN_PK, CN_NAME) VALUES
('CN_001', '소나타'),
('CN_002', '쏘렌토'),
('CN_003', '카마로'),
('CN_004', '3시리즈'),
('CN_005', 'E클래스');

-- CAR_INFO 데이터 삽입
INSERT INTO `CAR_INFO` (CI_PK, CN_FK, CC_FK, CY_FK) VALUES
('CI_001', 'CN_001', 'CC_001', 'CY_001'),  -- 현대 소나타 2020
('CI_002', 'CN_002', 'CC_002', 'CY_002'),  -- 기아 쏘렌토 2018
('CI_003', 'CN_003', 'CC_003', 'CY_003'),  -- 쉐보레 카마로 2019
('CI_004', 'CN_004', 'CC_004', 'CY_004'),  -- BMW 3시리즈 2017
('CI_005', 'CN_005', 'CC_005', 'CY_005'),  -- 벤츠 E클래스 2021
('CI_006', 'CN_003', 'CC_003', 'CY_005'),  -- 쉐보레 카마로 2021
('CI_007', 'CN_001', 'CC_001', 'CY_002');  -- 현대 소나타 2018

-- CAR_OPTION 데이터 삽입
INSERT INTO `CAR_OPTION` (CO_PK, CO_NAME) VALUES
('CO_001', '네비게이션'),
('CO_002', '후방카메라'),
('CO_003', '가족시트'),
('CO_004', '스마트키'),
('CO_005', '크루즈컨트롤'),
('CO_006', '블루투스'),
('CO_007', '후방감지센서'),
('CO_008', '헤드업디스플레이'),
('CO_009', '전자식 메모리 시트'),
('CO_010', '어댑티브 크루즈컨트롤');

-- CAR_INFO_OPTION 데이터 삽입
INSERT INTO `CAR_INFO_OPTION` (CIO_PK, CO_FK, CI_FK) VALUES
('CIO_001', 'CO_001', 'CI_001'),  -- 현대 소나타 2020 네비게이션
('CIO_002', 'CO_002', 'CI_001'),  -- 현대 소나타 2020 후방카메라
('CIO_003', 'CO_003', 'CI_002'),  -- 기아 쏘렌토 2018 가족시트
('CIO_004', 'CO_004', 'CI_002'),  -- 기아 쏘렌토 2018 스마트키
('CIO_005', 'CO_005', 'CI_003'),  -- 쉐보레 카마로 2019 크루즈컨트롤
('CIO_006', 'CO_006', 'CI_003'),  -- 쉐보레 카마로 2019 블루투스
('CIO_007', 'CO_007', 'CI_004'),  -- BMW 3시리즈 2017 후방감지센서
('CIO_008', 'CO_008', 'CI_004'),  -- BMW 3시리즈 2017 헤드업디스플레이
('CIO_009', 'CO_009', 'CI_005'),  -- 벤츠 E클래스 2021 전자식 메모리 시트
('CIO_010', 'CO_010', 'CI_005'),  -- 벤츠 E클래스 2021 어댑티브 크루즈컨트롤
('CIO_011', 'CO_006', 'CI_006'),  -- 쉐보레 카마로 2021 네비게이션
('CIO_012', 'CO_002', 'CI_007'),  -- 현대 소나타 2018 후방감지센서
('CIO_013', 'CO_007', 'CI_007');  -- 현대 소나타 2018 후방카메라