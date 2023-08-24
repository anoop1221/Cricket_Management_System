select country_name,team_id from team natural join player where economy>15; 



select distinct coach_name from coach where team_id in(select team_id from player 
where economy>15 );

select player_id from player where type_of_bowler in(select type_of_bowler from 
player group by type_of_bowler having count(*)>1);

-------natural join
select umpire_name from umpire where umpire_name not in( select umpire_name 
from umpire natural join matches where stadium='Eden Gardens');






