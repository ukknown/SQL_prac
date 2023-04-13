//PRODUCT 테이블과 OFFLINE_SALE 테이블에서 
//상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성해주세요. 
//결과는 매출액을 기준으로 내림차순 정렬해주시고 
//매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.

SELECT A.PRODUCT_CODE , SUM(A.PRICE * B.SALES_AMOUNT) AS SALES  //매출액(판매가 * 판매량) 합계를 출력
FROM PRODUCT A JOIN OFFLINE_SALE B 
ON A.PRODUCT_ID = B.PRODUCT_ID 
GROUP BY PRODUCT_CODE //상품코드 별
ORDER BY SALES DESC, PRODUCT_CODE ASC; // 매출액을 기준으로 내림차순 정렬해주시고 매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.
