select c.hacker_id, name, count(1) as challenges_created
from Challenges c join Hackers h using(hacker_id)
group by c.hacker_id, name
having challenges_created in (
    select t.cnt from 
        (select count(1) as cnt from Challenges group by hacker_id) t
    group by t.cnt
    having count(t.cnt) = 1 or  
    t.cnt = (select max(cnt) from
                (select count(1) as cnt from Challenges group by hacker_id) t
            )
 )                             
order by challenges_created desc, c.hacker_id