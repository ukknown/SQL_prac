//보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 
//  보호소에 들어올 당시에는 중성화1되지 않았지만, 
//  보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 
//  이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.


SELECT A.ANIMAL_ID, B.ANIMAL_TYPE, B.NAME  
FROM ANIMAL_INS A JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.SEX_UPON_INTAKE like '%Intact%' and (B.SEX_UPON_OUTCOME LIKE '%Neutered%' OR B.SEX_UPON_OUTCOME LIKE '%Spayed%')
ORDER BY A.ANIMAL_ID ASC
