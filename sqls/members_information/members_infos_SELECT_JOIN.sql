SELECT 
	MI.NAME AS "이름",
    MIH.HOBBY_COUNT AS "취미 갯수",
    MI.AGE AS "나이",
    MI.GENDER AS "성별",
    MIAN.ADDRESS_NAME AS "배송 주소"
FROM MEMBER_INFO MI
	INNER JOIN (
		SELECT MI_FK, COUNT(*) AS HOBBY_COUNT
        FROM MEMBER_INFO_HOBBY
        GROUP BY MI_FK
    ) AS MIH ON MI.MI_PK = MIH.MI_FK
    INNER JOIN (
		SELECT MIA.MI_FK, MA.ADDRESS AS ADDRESS_NAME
        FROM MEMBER_ADDRESS MA
			INNER JOIN (
				SELECT MI_FK, MIN(MA_FK) AS MA_FK
                FROM MEMBER_INFO_ADDRESS
                GROUP BY MI_FK
            ) MIA ON MA.MA_PK = MIA.MA_FK
    ) MIAN ON MI.MI_PK = MIAN.MI_FK
;