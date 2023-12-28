//보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
//0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 
//이때 결과는 시간대 순으로 정렬해야 합니다.

SET @HOUR := -1; //set함수 어떠한 변수에 특정한 값을 넣어줄 때 사용, @는 변수 앞에 선언, := 대입기호
SELECT (@HOUR := @HOUR +1) AS HOUR,(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @HOUR) AS COUNT
FROM ANIMAL_OUTS
WHERE @HOUR < 23
