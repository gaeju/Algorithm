-- 코드를 입력하세요
SELECT FLAVOR
FROM (SELECT *
        FROM FIRST_HALF 

        UNION ALL

        SELECT *
        FROM JULY) AS A
GROUP BY FLAVOR
ORDER BY SUM(TOTAL_ORDER) DESC
LIMIT 3


