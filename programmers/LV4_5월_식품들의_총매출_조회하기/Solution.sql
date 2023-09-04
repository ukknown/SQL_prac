//FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회하는 SQL문을 작성해주세요. 
//  이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.

SELECT A.PRODUCT_ID, A.PRODUCT_NAME, A.PRICE*B.AMOUNT AS TOTAL_SALES
FROM FOOD_PRODUCT A JOIN (SELECT PRODUCT_ID, SUM(AMOUNT) AS AMOUNT 
                 FROM FOOD_ORDER 
                 WHERE YEAR(PRODUCE_DATE) = '2022' AND MONTH(PRODUCE_DATE) = '05'
                 GROUP BY PRODUCT_ID) B
                 ON A.PRODUCT_ID = B.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC
