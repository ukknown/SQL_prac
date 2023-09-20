//FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성해주세요. 
//  이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 결과는 창고 ID를 기준으로 오름차순 정렬해주세요.


SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS,
CASE WHEN FREEZER_YN IS NULL THEN 'N' // CASE WHEN ~ THEN을 이용FREEZER_YN의 값이 NULL이면 N
WHEN FREEZER_YN = 'N' THEN 'N'
ELSE 'Y'
END AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기도%' //주소의 앞에 경기도가 있는 것만 %경기도% = 문장 어디에든 경기도가 있으면
ORDER BY WAREHOUSE_ID
