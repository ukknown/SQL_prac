//CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 
//대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성해주세요.
//평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 
//평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.

SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE) +1), 1) AS AVERAGE_DURATION  //ROUND(반올림할 값, 자릿수) , DATEDIFF(뒷시간, 앞시간) -> 시간- 시간으로 되기 때문에
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID  //그룹 별 건 수
HAVING AVG(DATEDIFF(END_DATE, START_DATE) +1) >= 7  //집계된 결과에서 원하는 결과를 보기위해 사용
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC
