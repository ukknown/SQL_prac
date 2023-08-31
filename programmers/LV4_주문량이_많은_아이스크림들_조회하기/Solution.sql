//7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.


SELECT A.FLAVOR AS FLAVOR 
FROM FIRST_HALF A JOIN JULY B ON A.FLAVOR = B.FLAVOR //FIRST_HALF의 FLAVOR와 JULY의 FLAVOR 같은 것 끼리 조인
GROUP BY A.FLAVOR // 아이스크림 맛을 조회하니까 FLAVOR로 GROUP
ORDER BY SUM(A.TOTAL_ORDER) + SUM(B.TOTAL_ORDER) DESC LIMIT 3 //상반기 총 주문량과 7월 주문량을 합쳐야 함으로 SUM 끼리 더함 그리고 내림차순 상위 3개로 제한
