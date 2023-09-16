-- 코드를 입력하세요

select car_id, 
       case when car_id in (SELECT distinct(car_id)
                      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                      where '2022-10-16' between start_date and END_DATE) then '대여중'
            else '대여 가능'
       end as avaliability
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by car_id desc