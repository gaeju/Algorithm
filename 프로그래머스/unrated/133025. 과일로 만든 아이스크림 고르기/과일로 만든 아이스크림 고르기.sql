-- 코드를 입력하세요
SELECT
 t1.FLAVOR
from first_half as t1
join icecream_info as t2 on t1.flavor = t2.flavor
where t2.INGREDIENT_TYPE = 'fruit_based' and total_order > 3000
order by total_order desc