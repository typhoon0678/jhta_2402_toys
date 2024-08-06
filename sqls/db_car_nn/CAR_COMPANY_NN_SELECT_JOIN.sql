-- GROUP BY
SELECT 
	cc.CC_NAME AS "회사이름", 
    cn.CN_NAME AS "자동차이름", 
    cy.CY_YEAR AS "연식",
    COUNT(*) AS "옵션 갯수"
FROM 
    CAR_INFO_OPTION cio INNER JOIN 
    CAR_INFO ci INNER JOIN
    CAR_COMPANY cc INNER JOIN
    CAR_YEAR cy INNER JOIN
    CAR_NAME cn INNER JOIN
    CAR_OPTION co
ON
	co.CO_PK = cio.CO_FK AND
    ci.CI_PK = cio.CI_FK AND
    cc.CC_PK = ci.CC_FK AND
    cn.CN_PK = ci.CN_FK AND
    cy.CY_PK = ci.CY_FK
GROUP BY 
	ci.CI_PK,
    cc.CC_NAME,
    cn.CN_NAME,
    cy.CY_YEAR
;

-- FROM 서브쿼리
SELECT
	cc.CC_NAME AS "회사이름", 
    cn.CN_NAME AS "자동차이름", 
    cy.CY_YEAR AS "연식",
    cioc.OPTION_COUNT AS "옵션 갯수"
FROM 
    CAR_INFO ci INNER JOIN
    CAR_COMPANY cc INNER JOIN
    CAR_YEAR cy INNER JOIN
    CAR_NAME cn RIGHT JOIN
    (SELECT CI_FK, COUNT(*) AS "OPTION_COUNT"
		FROM CAR_INFO_OPTION cio INNER JOIN CAR_OPTION co
		ON cio.CO_FK = co.CO_PK
        GROUP BY CI_FK) AS cioc
ON
    ci.CI_PK = cioc.CI_FK AND
    cc.CC_PK = ci.CC_FK AND
    cn.CN_PK = ci.CN_FK AND
    cy.CY_PK = ci.CY_FK
;