--functions exerise
--q1
create or replace function no_emp() returns int as
'
   declare
      cnt int;
   begin
      select into cnt count(eno) from emp2 where jdate > ''2006-01-01'';
     return cnt;
   end;
' 
language 'plpgsql';
--q2
    

create or replace function abc(e_no int) returns int as'           
  declare
     cnt int;
  begin
    select into cnt count(empro.pno) from emppro as ep,emp2 as e where ep.eno=1 and ;
return cnt;
  end;
'language 'plpgsql';



--q3
create or replace function details(name varchar(40)) returns text as
'
  declare
       ans text;
 begin 
    select into ans (ename,qua,jdate)from emp2,project,emppro where pname=name and no_of_hours_woerked > 10 and emp2.eno=emppro.eno and project.pno=emppro.pno;
return ans;
end;
'language 'plpgsql';
